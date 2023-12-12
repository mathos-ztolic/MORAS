$SET(0,3) // base
$SET(1,3) // exponent

$SET(2,0) // result

$MV(0,base)
$MV(1,exponent)

$SET(nextadd,1)

$WHILE(exponent) // {

	$WHILE(base) // {
  	$SUM(2, nextadd, 2)
  	@base
  	M=M-1
  $END
  // }

  $MV(2,nextadd)
  $SET(2,0)

  @exponent
  M=M-1

  $MV(0,base)

$END
// }

$MV(nextadd,2)

$HALT()
