set x 9
set y 9
set z [expr {$x ** $y}]
puts $z

try {
    expr 1 / 0
} on error {msg opts} {
    puts "Message: $msg"
    puts "ErrorCode: [dict get $opts -errorcode]"
    puts "StackTrace:\n[dict get $opts -errorinfo]"
}
