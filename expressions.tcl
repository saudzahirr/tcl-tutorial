set x 9
set y 9
set z [expr {$x ** $y}]
puts $z

puts [expr {$z % 2 == 0 ? "Even" : "Odd"}]

puts [expr { "9" == "9.0"}]
puts [expr { "9" eq "9.0"}]
