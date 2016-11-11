package require ::quartus::project
project_open "c:/Users/Megatron/Documents/441/Support Files/DE2_115.qsf"
set f [open "c:/Users/Megatron/Desktop/Part4/synthesis/pin_assignments.qsf" w]
set asgn_col [get_all_instance_assignments -name *]

foreach_in_collection asgn $asgn_col {

   set id [lindex $asgn 0]
   set from [lindex $asgn 1]
   set to [lindex $asgn 2]
   set name [lindex $asgn 3]
   set value [lindex $asgn 4]
   set ename [lindex $asgn 5]
   set tag [lindex $asgn 6]
   set cmd "set_instance_assignment "
	if {$ename != ""} {append cmd "-entity $ename "}
	if {$from != ""} {append cmd "-from $from "}
	append cmd "-name $name "
	if {[string is integer -strict $value]} {if  {$value < 10 && $value > 0} {append cmd "$value "} else {append cmd "\"$value\" "} } else {append cmd "\"$value\" "}
	if {$id != ""} {append cmd "-section_id $id "}
	if {$tag != ""} {append cmd "-tag $tag "}
	if {$to != ""} {append cmd "-to $to "}
	puts $f $cmd
}

close $f
