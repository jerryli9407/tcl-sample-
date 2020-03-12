set  list {44 16 123 98 57}
set sum 0
foreach el $list {
	set sum [expr $sum + $elment]
}
put $sum
