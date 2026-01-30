set cmd $argv
puts "Executing Command: $cmd ..."

puts [clock format [clock seconds]]

set start_time [clock seconds]

if {[catch {exec $cmd} output]} {
    puts "ERROR: $output"
}

set end_time [clock seconds]

set elapsed_time [expr {$end_time - $start_time}]

puts "Wallclock Time: $elapsed_time seconds"
