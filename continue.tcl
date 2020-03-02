#output i =0 i=2 i=6 ,skip i=4

for {set i 0} {$i < 10} {incr i 2} {
    if {$i == 4} {
        continue;}
    if {$i >6} {
        break}
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
