# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_AXILiteS {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
E { 
	dir I
	width 32
	depth 32
	mode ap_memory
	offset 128
	offset_end 255
}
S { 
	dir O
	width 32
	depth 32
	mode ap_memory
	offset 256
	offset_end 383
}
}
dict set axilite_register_dict AXILiteS $port_AXILiteS


