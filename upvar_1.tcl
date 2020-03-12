proc SetPostive1 {a b} {
	if {$b < 0} {
	set a [expr -$b]
	} else {
	set a $b
	}
	puts $a
}
set c 5
set d -5
SetPostive1 c $c
SetPostive1 d $d
#此时虽然proc结果是5，但是实际上并没有改变d的值
puts "d = $d, c = $c"	
#d的值仍然是-5，如果要想在proc中直接更改d的值，需要Global或者用upvar命令在进程中更改，upvar可以理解成给指定的上层参数定义了一个别名变量，而别名变量和原上层参数变量指向同一内存空间

proc SetPostive2 {varName varValue} {
	upvar $varName myvar
	if {$varValue < 0} {
	set myvar [expr -$varValue]
}	else {
	set myvar $varValue}
	return $myvar
}
set e 5
set f -5
SetPostive2 e $e
SetPostive2 f $f    
puts "e = $e, f = $f"	