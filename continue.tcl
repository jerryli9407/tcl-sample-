#output i =0 i=2 i=6 ,skip i=4
for {set i 0} {$i < 10} {incr i 2} {
    if {$i == 4} {
        continue;}   # continue 忽略i=4时的循环体而去执行下一个循环体
    if {$i >6} {
        break}       #break 中指整个循环体，跳出当前for循环
        puts "i = $i"
}

#another order
for {set i 0} {$i < 10} {incr i 2} {
    if {$i == 4} {
        continue;}
puts "i = $i"
    if {$i >6} {
        break}
      
}
