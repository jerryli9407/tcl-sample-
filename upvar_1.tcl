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
#��ʱ��Ȼproc�����5������ʵ���ϲ�û�иı�d��ֵ
puts "d = $d, c = $c"	
#d��ֵ��Ȼ��-5�����Ҫ����proc��ֱ�Ӹ���d��ֵ����ҪGlobal������upvar�����ڽ����и��ģ�upvar�������ɸ�ָ�����ϲ����������һ������������������������ԭ�ϲ��������ָ��ͬһ�ڴ�ռ�

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