(draw_bottom)

@current_position
D=M
@SCREEN
D=D+A
@fifteen_rows
D=D+M
A=D
M=-1

@next_jump
A=M
0;JMP
