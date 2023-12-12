$SET(0,7)
$SET(offset,100)

$MV(0,iterations)
@iterations
M=M-1
$SET(idx,0)



$WHILE(iterations)
	
	$SUB(0,idx,inner_iterations)
	@inner_iterations
	M=M-1
	
	$MV(idx,inner_idx)
	@inner_idx
	M=M+1
	
	$SUM(idx,offset,position)
	
	$WHILE(inner_iterations)
		$SUM(inner_idx,offset,inner_position)

		@position
		A=M
		D=M
		@inner_position
		A=M
		D=D-M
		@dont_swap
		D;JLE

		$SWP(*inner_position,*position)

		(dont_swap)
		@inner_idx
		M=M+1
		@inner_iterations
		M=M-1
	$END

	@idx
	M=M+1

	@iterations
	M=M-1

$END

$HALT()
