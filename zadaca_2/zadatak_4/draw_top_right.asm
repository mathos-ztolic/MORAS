(draw_top_right)

@current_position
D=M
@SCREEN
A=D+A
M=-1

@current_position
D=M
@SCREEN
D=D+A
@one_row
D=D+M
@temporary_position
M=D
@16383
D=!A
@temporary_position
A=M
M=D

@current_position
D=M
@SCREEN
D=D+A
@two_rows
D=D+M
@temporary_position
M=D
@24575
D=!A
@temporary_position
A=M
M=D

@current_position
D=M
@SCREEN
D=D+A
@three_rows
D=D+M
@temporary_position
M=D
@28671
D=!A
@temporary_position
A=M
M=D

@current_position
D=M
@SCREEN
D=D+A
@four_rows
D=D+M
@temporary_position
M=D
@30719
D=!A
@temporary_position
A=M
M=D

@current_position
D=M
@SCREEN
D=D+A
@five_rows
D=D+M
@temporary_position
M=D
@31743
D=!A
@temporary_position
A=M
M=D

@current_position
D=M
@SCREEN
D=D+A
@six_rows
D=D+M
@temporary_position
M=D
@32255
D=!A
@temporary_position
A=M
M=D

@current_position
D=M
@SCREEN
D=D+A
@seven_rows
D=D+M
@temporary_position
M=D
@32511
D=!A
@temporary_position
A=M
M=D

@current_position
D=M
@SCREEN
D=D+A
@eight_rows
D=D+M
@temporary_position
M=D
@32639
D=!A
@temporary_position
A=M
M=D

@current_position
D=M
@SCREEN
D=D+A
@nine_rows
D=D+M
@temporary_position
M=D
@32703
D=!A
@temporary_position
A=M
M=D

@current_position
D=M
@SCREEN
D=D+A
@ten_rows
D=D+M
@temporary_position
M=D
@32735
D=!A
@temporary_position
A=M
M=D

@current_position
D=M
@SCREEN
D=D+A
@eleven_rows
D=D+M
@temporary_position
M=D
@32751
D=!A
@temporary_position
A=M
M=D

@current_position
D=M
@SCREEN
D=D+A
@twelve_rows
D=D+M
@temporary_position
M=D
@32759
D=!A
@temporary_position
A=M
M=D

@current_position
D=M
@SCREEN
D=D+A
@thirteen_rows
D=D+M
@temporary_position
M=D
@32763
D=!A
@temporary_position
A=M
M=D

@current_position
D=M
@SCREEN
D=D+A
@fourteen_rows
D=D+M
@temporary_position
M=D
@32765
D=!A
@temporary_position
A=M
M=D

@current_position
D=M
@SCREEN
D=D+A
@fifteen_rows
D=D+M
@temporary_position
M=D
@32766
D=!A
@temporary_position
A=M
M=D

@next_jump
A=M
0;JMP
