import re
from sys import argv, stderr
from typing import Mapping, NamedTuple, Optional


class ParserLine(NamedTuple):
    line: str
    lineno_parsed: int
    lineno_original: int

class ParsingError(Exception):
    def __init__(self, src, msg):
        self.src = src
        self.msg = msg

def sliding_substring(string, n=2):
    if len(string) <= 2:
        yield string
        return
    for i in range(len(string) - n + 1):
        yield string[i:i+n]

class Parser:
    _lines: list[ParserLine]
    _labels: dict[str, int]
    _variables: dict[str, int]
    _comment: bool
    _current_variable: int
    filename: str
    output_filename: str
    
    OPERATIONS = {"0": "0101010", "1": "0111111", "-1": "0111010",
                  "D": "0001100", "A": "0110000", "!D": "0001101",
                  "!A": "0110001", "-D": "0001111", "-A": "0110011",
                  "D+1": "0011111", "A+1": "0110111", "D-1": "0001110",
                  "A-1": "0110010", "D+A": "0000010", "A+D": "0000010",
                  "D-A": "0010011", "A-D": "0000111", "D&A": "0000000",
                  "A&D": "0000000", "D|A": "0010101", "A|D": "0010101",
                  "M": "1110000", "!M": "1110001", "-M": "1110011",
                  "M+1": "1110111", "M-1": "1110010", "D+M": "1000010",
                  "M+D": "1000010", "D-M": "1010011", "M-D": "1000111",
                  "D&M": "1000000", "M&D": "1000000", "D|M": "1010101",
                  "M|D": "1010101"}

    JUMPS = {"" : "000", "JGT": "001", "JEQ": "010", "JGE": "011", 
             "JLT": "100", "JNE": "101", "JLE": "110", "JMP": "111"}
    
    DESTINATIONS = {"" : "000", "M" : "001", "D" : "010", "MD" : "011",
                    "A" : "100", "AM" : "101", "AD" : "110", "AMD" : "111"}

    def __init__(self, filename: str, output_filename: Optional[str] = None):

        self.filename = filename
        
        # Ako datoteka ima .asm extenziju, zamijeni je s .hack,
        # a ako ju nema, samo dodaj .hack
        if output_filename is None:
            self.output_filename = re.sub(r'\.asm$', '', filename,
                                          flags=re.IGNORECASE) + '.hack'
        else:
            self.output_filename = output_filename

        self._lines = []

        self._labels = {'SCREEN': 16384, 'KBD': 24576, 'SP': 0,
                        'LCL': 1, 'ARG': 2, 'THIS': 3, 'THAT': 4}
        for i in range(16):
            self._labels[f"R{i}"] = i

        self._variables = {}

        self._comment = False
        
        # varijable pocinju na 16
        self._current_variable = 16
    

    def _iter_lines(self, func):
        newlines = []
        i = 0
        for (line, _, o) in self._lines:
            try:
                newline = func(line, i, o)
            except ParsingError as error:
                print(f"[{error.src}, {o}] {error.msg}", file=stderr)
                exit(1)
            if newline:
                newlines.append(ParserLine(newline, i, o))
                i += 1
        self._lines = newlines

    def _parse_lines(self):
        self._iter_lines(self._parse_line)
    
    def _parse_symbols(self):
        self._iter_lines(self._parse_label)
        self._iter_lines(self._parse_variable)
    
    def _parse_commands(self):
        self._iter_lines(self._parse_command)
    
    def _parse_line(self, line, p, o):
        real_line = ""
        skip_next = False
        # zadnji character nece biti parsan, zato je keepends=True
        # potreban u splitlines u parse metodi
        for window in sliding_substring(line):
            if skip_next:
                skip_next = False
                continue
            if (
                (not self._comment and window == '/*') or
                (self._comment and window == '*/')
            ):
                skip_next = True
                self._comment = not self._comment
            elif not self._comment and window == '*/':
                raise ParsingError('PL', "Unbalanced comment delimiter.")
            elif window == '//' and not self._comment:
                break
            elif not window[0].isspace() and not self._comment:
                real_line += window[0]
        return real_line

    def _parse_label(self, line, p, o):
        if line[0] != '(':
            return line
        split_label = line[1:].split(')')
        label = split_label[0]
        if len(split_label) != 2 or split_label[1] != '' or label == '':
            raise ParsingError('SYM', f'Invalid label: `{label}\'')
        self._labels[label] = p
        return ""

    def _parse_variable(self, line, p, o):
        if line[0] != "@":
            return line
        l = line[1:]
        if l.isdigit():
            return line
        if l in self._labels:
            return f"@{self._labels[l]}"
        if l not in self._variables:
            self._variables[l] = self._current_variable
            self._current_variable += 1
        return f"@{self._variables[l]}"

    def _parse_command(self, line, p, o):
        if line[0] == "@":
            num = int(line[1:])
            return "{0:016b}".format(num)
        
        try:
            dest_str, rest = line.split('=')
        except ValueError:
            dest_str, rest = '', line

        try:
            op_str, jmp_str = rest.split(';')
        except ValueError:
            op_str, jmp_str = rest, ''
        
        error_message = ''  # pyright se zali da je error_message unbound lol
        try:
            error_message = f"Invalid operation: {op_str}"
            op = self.OPERATIONS[op_str]
            error_message = f"Invalid destination: {dest_str}"
            dest = self.DESTINATIONS[dest_str]
            error_message = f"Invalid jump: {jmp_str}"
            jmp = self.JUMPS[jmp_str]
        except KeyError:
            raise ParsingError('COM', error_message)
        
        return f"111{op}{dest}{jmp}"


    def _full_parse(self):
        self._parse_lines()
        self._parse_symbols()
        self._parse_commands()

    def parse(self):
        try:
            with open(self.filename) as file:
                text = file.read()
        except OSError as error:
            print(f"[IO] Cannot open `{self.filename}' "
                  f"for reading: {error.strerror}",
                  file=stderr)
            return
        
        for i, line in enumerate(text.splitlines(keepends=True)):
            self._lines.append(ParserLine(line, i, i))

        self._full_parse()
        
        try:
            with open(self.output_filename, 'w') as file:
                file.write('\n'.join(line for (line, _, __) in self._lines))
        except OSError as error:
            print(f"[IO] Cannot open `{self.output_filename}' "
                  f"for writing: {error.strerror}",
                  file=stderr)
            return

if __name__ == "__main__":
    if len(argv) < 2:
        print(f"{argv[0]} <filename> ...")
        exit(1)
    for filename in argv[1:]:
        Parser(filename).parse()
