// 6 + 64*32 (6th column + 64th row)
@2054
D=A
@start_position
M=D
@current_position
M=D

@32
D=A
@one_row
M=D

@64
D=A
@two_rows
M=D

@96
D=A
@three_rows
M=D

@128
D=A
@four_rows
M=D

@160
D=A
@five_rows
M=D

@192
D=A
@six_rows
M=D

@224
D=A
@seven_rows
M=D

@256
D=A
@eight_rows
M=D

@288
D=A
@nine_rows
M=D

@320
D=A
@ten_rows
M=D

@352
D=A
@eleven_rows
M=D

@384
D=A
@twelve_rows
M=D

@416
D=A
@thirteen_rows
M=D

@448
D=A
@fourteen_rows
M=D

@480
D=A
@fifteen_rows
M=D

@512
D=A
@sixteen_rows
M=D

@START
0;JMP
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
(draw_bottom_left)

@current_position
D=M
@SCREEN
D=D+A
@temporary_position
M=D
@32766
D=!A
@temporary_position
A=M
M=D

@current_position
D=M
@SCREEN
D=D+A
@one_row
D=D+M
@temporary_position
M=D
@16385
D=A
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
@8193
D=A
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
@4097
D=A
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
@2049
D=A
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
@1025
D=A
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
@513
D=A
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
@257
D=A
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
@129
D=A
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
@65
D=A
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
@33
D=A
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
@17
D=A
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
@9
D=A
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
@5
D=A
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
@3
D=A
@temporary_position
A=M
M=D

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
(draw_bottom_right)

@current_position
D=M
@SCREEN
D=D+A
@temporary_position
M=D
@32766
D=!A
@temporary_position
A=M
M=D

@current_position
D=M
@SCREEN
D=D+A
@one_row
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
@two_rows
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
@three_rows
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
@four_rows
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
@five_rows
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
@six_rows
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
@seven_rows
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
@eight_rows
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
@nine_rows
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
@ten_rows
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
@eleven_rows
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
@twelve_rows
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
@thirteen_rows
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
@fourteen_rows
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
@fifteen_rows
D=D+M
A=D
M=-1

@next_jump
A=M
0;JMP
(draw_left)

@current_position
D=M
@SCREEN
A=D+A
M=1

@current_position
D=M
@SCREEN
D=D+A
@one_row
D=D+M
A=D
M=1

@current_position
D=M
@SCREEN
D=D+A
@two_rows
D=D+M
A=D
M=1

@current_position
D=M
@SCREEN
D=D+A
@three_rows
D=D+M
A=D
M=1

@current_position
D=M
@SCREEN
D=D+A
@four_rows
D=D+M
A=D
M=1

@current_position
D=M
@SCREEN
D=D+A
@five_rows
D=D+M
A=D
M=1

@current_position
D=M
@SCREEN
D=D+A
@six_rows
D=D+M
A=D
M=1

@current_position
D=M
@SCREEN
D=D+A
@seven_rows
D=D+M
A=D
M=1

@current_position
D=M
@SCREEN
D=D+A
@eight_rows
D=D+M
A=D
M=1

@current_position
D=M
@SCREEN
D=D+A
@nine_rows
D=D+M
A=D
M=1

@current_position
D=M
@SCREEN
D=D+A
@ten_rows
D=D+M
A=D
M=1

@current_position
D=M
@SCREEN
D=D+A
@eleven_rows
D=D+M
A=D
M=1

@current_position
D=M
@SCREEN
D=D+A
@twelve_rows
D=D+M
A=D
M=1

@current_position
D=M
@SCREEN
D=D+A
@thirteen_rows
D=D+M
A=D
M=1

@current_position
D=M
@SCREEN
D=D+A
@fourteen_rows
D=D+M
A=D
M=1

@current_position
D=M
@SCREEN
D=D+A
@fifteen_rows
D=D+M
A=D
M=1

@next_jump
A=M
0;JMP
(draw_left_diagonal)

@current_position
D=M
@SCREEN
A=D+A
M=1

@current_position
D=M
@SCREEN
D=D+A
@one_row
D=D+M
@temporary_position
M=D
@2
D=A
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
@4
D=A
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
@8
D=A
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
@16
D=A
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
@32
D=A
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
@64
D=A
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
@128
D=A
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
@256
D=A
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
@512
D=A
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
@1024
D=A
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
@2048
D=A
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
@4096
D=A
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
@8192
D=A
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
@16384
D=A
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
@32767
D=!A
@temporary_position
A=M
M=D

@next_jump
A=M
0;JMP
(draw_right)

@current_position
D=M
@SCREEN
D=D+A
@temporary_position
M=D
@32767
D=!A
@temporary_position
A=M
M=D

@current_position
D=M
@SCREEN
D=D+A
@one_row
D=D+M
@temporary_position
M=D
@32767
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
@32767
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
@32767
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
@32767
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
@32767
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
@32767
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
@32767
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
@32767
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
@32767
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
@32767
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
@32767
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
@32767
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
@32767
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
@32767
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
@32767
D=!A
@temporary_position
A=M
M=D

@next_jump
A=M
0;JMP
(draw_right_diagonal)

@current_position
D=M
@SCREEN
D=D+A
@temporary_position
M=D
@32767
D=!A
@temporary_position
A=M
M=D

@current_position
D=M
@SCREEN
D=D+A
@one_row
D=D+M
@temporary_position
M=D
@16384
D=A
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
@8192
D=A
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
@4096
D=A
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
@2048
D=A
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
@1024
D=A
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
@512
D=A
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
@256
D=A
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
@128
D=A
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
@64
D=A
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
@32
D=A
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
@16
D=A
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
@8
D=A
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
@4
D=A
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
@2
D=A
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
@1
D=A
@temporary_position
A=M
M=D

@next_jump
A=M
0;JMP
(draw_top)

@current_position
D=M
@SCREEN
A=D+A
M=-1

@next_jump
A=M
0;JMP
(draw_top_left)

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
@3
D=A
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
@5
D=A
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
@9
D=A
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
@17
D=A
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
@33
D=A
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
@65
D=A
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
@129
D=A
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
@257
D=A
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
@513
D=A
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
@1025
D=A
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
@2049
D=A
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
@4097
D=A
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
@8193
D=A
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
@16385
D=A
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
(START)
@tile1_done
D=A
@next_jump
M=D
@draw_top_left
0;JMP

(tile1_done)
@current_position
M=M+1
@tile2_done
D=A
@next_jump
M=D
@draw_top
0;JMP

(tile2_done)
@current_position
M=M+1
@tile3_done
D=A
@next_jump
M=D
@draw_top
0;JMP

(tile3_done)
@current_position
M=M+1
@tile4_done
D=A
@next_jump
M=D
@draw_top
0;JMP

(tile4_done)
@current_position
M=M+1
@tile5_done
D=A
@next_jump
M=D
@draw_top
0;JMP

(tile5_done)
@current_position
M=M+1
@tile6_done
D=A
@next_jump
M=D
@draw_top
0;JMP

(tile6_done)
@current_position
M=M+1
@tile7_done
D=A
@next_jump
M=D
@draw_top
0;JMP

(tile7_done)
@current_position
M=M+1
@tile8_done
D=A
@next_jump
M=D
@draw_top_right
0;JMP

(tile8_done)
@sixteen_rows
D=M
@start_position
MD=M+D
@current_position
M=D
@tile9_done
D=A
@next_jump
M=D
@draw_left
0;JMP

(tile9_done)
@current_position
M=M+1
@tile10_done
D=A
@next_jump
M=D
@draw_left_diagonal
0;JMP

(tile10_done)
@current_position
M=M+1
M=M+1
M=M+1
M=M+1
M=M+1
@tile11_done
D=A
@next_jump
M=D
@draw_right_diagonal
0;JMP

(tile11_done)
@current_position
M=M+1
@tile12_done
D=A
@next_jump
M=D
@draw_right
0;JMP

(tile12_done)
@sixteen_rows
D=M
@start_position
MD=M+D
@current_position
M=D
@tile13_done
D=A
@next_jump
M=D
@draw_left
0;JMP

(tile13_done)
@current_position
M=M+1
M=M+1
@tile14_done
D=A
@next_jump
M=D
@draw_left_diagonal
0;JMP

(tile14_done)
@current_position
M=M+1
M=M+1
M=M+1
@tile15_done
D=A
@next_jump
M=D
@draw_right_diagonal
0;JMP

(tile15_done)
@current_position
M=M+1
M=M+1
@tile16_done
D=A
@next_jump
M=D
@draw_right
0;JMP

(tile16_done)
@sixteen_rows
D=M
@start_position
MD=M+D
@current_position
M=D
@tile17_done
D=A
@next_jump
M=D
@draw_left
0;JMP

(tile17_done)
@current_position
M=M+1
M=M+1
M=M+1
@tile18_done
D=A
@next_jump
M=D
@draw_left_diagonal
0;JMP

(tile18_done)
@current_position
M=M+1
@tile19_done
D=A
@next_jump
M=D
@draw_right_diagonal
0;JMP

(tile19_done)
@current_position
M=M+1
M=M+1
M=M+1
@tile20_done
D=A
@next_jump
M=D
@draw_right
0;JMP

(tile20_done)
@sixteen_rows
D=M
@start_position
MD=M+D
@current_position
M=D
@tile21_done
D=A
@next_jump
M=D
@draw_left
0;JMP

(tile21_done)
@current_position
M=M+1
M=M+1
M=M+1
@tile22_done
D=A
@next_jump
M=D
@draw_right_diagonal
0;JMP

(tile22_done)
@current_position
M=M+1
@tile23_done
D=A
@next_jump
M=D
@draw_left_diagonal
0;JMP

(tile23_done)
@current_position
M=M+1
M=M+1
M=M+1
@tile24_done
D=A
@next_jump
M=D
@draw_right
0;JMP

(tile24_done)
@sixteen_rows
D=M
@start_position
MD=M+D
@current_position
M=D
@tile25_done
D=A
@next_jump
M=D
@draw_left
0;JMP

(tile25_done)
@current_position
M=M+1
M=M+1
@tile26_done
D=A
@next_jump
M=D
@draw_right_diagonal
0;JMP

(tile26_done)
@current_position
M=M+1
M=M+1
M=M+1
@tile27_done
D=A
@next_jump
M=D
@draw_left_diagonal
0;JMP

(tile27_done)
@current_position
M=M+1
M=M+1
@tile28_done
D=A
@next_jump
M=D
@draw_right
0;JMP

(tile28_done)
@sixteen_rows
D=M
@start_position
MD=M+D
@current_position
M=D
@tile29_done
D=A
@next_jump
M=D
@draw_left
0;JMP

(tile29_done)
@current_position
M=M+1
@tile30_done
D=A
@next_jump
M=D
@draw_right_diagonal
0;JMP

(tile30_done)
@current_position
M=M+1
M=M+1
M=M+1
M=M+1
M=M+1
@tile31_done
D=A
@next_jump
M=D
@draw_left_diagonal
0;JMP

(tile31_done)
@current_position
M=M+1
@tile32_done
D=A
@next_jump
M=D
@draw_right
0;JMP

(tile32_done)
@sixteen_rows
D=M
@start_position
MD=M+D
@current_position
M=D
@tile33_done
D=A
@next_jump
M=D
@draw_bottom_left
0;JMP

(tile33_done)
@current_position
M=M+1
@tile34_done
D=A
@next_jump
M=D
@draw_bottom
0;JMP

(tile34_done)
@current_position
M=M+1
@tile35_done
D=A
@next_jump
M=D
@draw_bottom
0;JMP

(tile35_done)
@current_position
M=M+1
@tile36_done
D=A
@next_jump
M=D
@draw_bottom
0;JMP

(tile36_done)
@current_position
M=M+1
@tile37_done
D=A
@next_jump
M=D
@draw_bottom
0;JMP

(tile37_done)
@current_position
M=M+1
@tile38_done
D=A
@next_jump
M=D
@draw_bottom
0;JMP

(tile38_done)
@current_position
M=M+1
@tile39_done
D=A
@next_jump
M=D
@draw_bottom
0;JMP

(tile39_done)
@current_position
M=M+1
@DONE
D=A
@next_jump
M=D
@draw_bottom_right
0;JMP

(DONE)
@DONE
0;JMP
