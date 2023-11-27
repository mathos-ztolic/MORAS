#!/usr/bin/env python3
import os

in_files = [file for file in os.listdir('.') if file.endswith('.data')]
subroutine_names = [file[:-5] for file in in_files]
out_files = [subroutine_name+'.asm' for subroutine_name in subroutine_names]

ONES_COMPLEMENT = str.maketrans('01', '10')

direct = {
    '0000000000000000': 0,
    '0000000000000001': 1,
    '1111111111111111': -1,
}

for fin_name, fout_name, name in zip(in_files, out_files, subroutine_names):
    print(fin_name)
    with open(fin_name, 'r') as file_in:
        lines = file_in.read().split('\n')
        binary_numbers = [line[::-1] for line in lines]
    
    with open(fout_name, 'w') as file_out:
        file_out.write(f"({name})\n")
        for i, number in enumerate(binary_numbers):
            if number == '':
                continue
            row_offset = 32*i
            # small optimization
            if number in direct:
                file_out.write(
                    f"@current_position\n"
                    f"D=M\n"
                    f"@SCREEN\n"
                    f"D=D+A\n"
                    f"@{row_offset}\n"
                    f"D=D+A\n"
                    f"A=D\n"
                    f"M={direct[number]}\n"
                )
                continue

            file_out.write(
                f"@current_position\n"
                f"D=M\n"
                f"@SCREEN\n"
                f"D=D+A\n"
                f"@{row_offset}\n"
                f"D=D+A\n"
                f"@temporary_position\n"
                f"M=D\n"
            )

            invert = False
            if number[0] == '1':
                invert = True
                number = number.translate(ONES_COMPLEMENT)

            number = int(number[1:], base=2)

            file_out.write(
                f"@{number}\n"
                f"D={'!' if invert else ''}A\n"
                f"@temporary_position\n"
                f"A=M\n"
                f"M=D\n"
            )
        file_out.write("@next_jump\nA=M\n0;JMP\n")
