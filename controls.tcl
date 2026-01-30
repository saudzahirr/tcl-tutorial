for {set i 1} {$i <= 15} {incr i} {
    if {$i % 2 == 0} then {
        puts "$i is even"
    } else {
        puts "$i is odd"
    }
}

for {set i 1} {$i <= 64} {incr i 3} {
    if {$i % 3 == 0} then {
        puts "$i multiple of 3"
    } elseif {$i % 4 == 0} {
        puts "$i multiple of 4"
    } else {
        puts "$i not multiple of 3 & 4"
    }
}

foreach x {1 2 3} y {a b c} {
    puts "$x -> $y"
}


set x 0

while {$x < 5} {
    puts "x is $x"
    incr x
}


# Switch case

set x "ONE"
set y 1
set z ONE

# This is probably the easiest and cleanest form of the command
# to remember:
switch $x {
    "$z" { ;# will not match due to literal quotes
        set y1 [expr {$y+1}]
        puts "MATCH \$z. $y + $z is $y1"
    }
    ONE {
        set y1 [expr {$y+1}]
        puts "MATCH ONE. $y + one is $y1"
    }
    TWO {
        set y1 [expr {$y+2}]
        puts "MATCH TWO. $y + two is $y1"
    }
    THREE {
        set y1 [expr {$y+3}]
        puts "MATCH THREE. $y + three is $y1"
    }
    default {
        puts "$x is NOT A MATCH"
    }
}


switch $x "$z" {
    set y1 [expr {$y+1}]
    puts "MATCH \$z. $y + $z is $y1"
} ONE {
    set y1 [expr {$y+1}]
    puts "MATCH ONE. $y + one is $y1"
} TWO {
    set y1 [expr {$y+2}]
    puts "MATCH TWO. $y + two is $y1"
} THREE {
    set y1 [expr {$y+3}]
    puts "MATCH THREE. $y + three is $y1"
} default {
    puts "$x does not match any of these choices"
}


switch $x "ONE" "puts ONE=1" "TWO" "puts TWO=2" "default" "puts NO_MATCH"

switch $x \
"ONE"     "puts ONE=1"  \
"TWO"     "puts TWO=2" \
"default"     "puts NO_MATCH";
