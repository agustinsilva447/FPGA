# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_AXILiteS {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
U { 
	dir I
	width 32
	depth 64
	mode ap_memory
	offset 256
	offset_end 511
}
l { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 512
	offset_end 519
}
V { 
	dir O
	width 32
	depth 64
	mode ap_memory
	offset 768
	offset_end 1023
}
}
dict set axilite_register_dict AXILiteS $port_AXILiteS


