#lsearch �� lreplace ���ɾ���б�����ɾ����Ԫ��
proc ldel {list1 x1} {
set index1 [lsearch -exact  $list1 $x1 ]
for {} {$index1>=0} {} {
	set list1 [lreplace $list1 $index1 $index1]
	set index1 [lsearch -exact  $list1 $x1 ]
	}
return $list1
}
