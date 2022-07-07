set ch [open search.txt]
set data [chan read $ch]
chan close $ch

set lines [split [string trim $data] \n]

set res {}
foreach line $lines {
    if {[llength $line] > 3 && [lindex $line 2] eq {rtp}} {
        lappend res [lindex $line 3]
    }
}