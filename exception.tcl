# Using catch command

if {[catch {expr {1 / 0}} errMsg]} {
    puts "Caught an error: $errMsg"
}

puts "\nUsing try/on error block:"

# Using try/on error block

try {
    expr 1 / 0
} on error {msg opts} {
    puts "Message: $msg"
    puts "ErrorCode: [dict get $opts -errorcode]"
    puts "StackTrace:\n[dict get $opts -errorinfo]"
}
