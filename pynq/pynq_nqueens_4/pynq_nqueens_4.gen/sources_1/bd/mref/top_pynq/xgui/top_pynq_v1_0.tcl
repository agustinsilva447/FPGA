# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "M" -parent ${Page_0}
  ipgui::add_param $IPINST -name "N_1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "N_2" -parent ${Page_0}


}

proc update_PARAM_VALUE.M { PARAM_VALUE.M } {
	# Procedure called to update M when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M { PARAM_VALUE.M } {
	# Procedure called to validate M
	return true
}

proc update_PARAM_VALUE.N_1 { PARAM_VALUE.N_1 } {
	# Procedure called to update N_1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.N_1 { PARAM_VALUE.N_1 } {
	# Procedure called to validate N_1
	return true
}

proc update_PARAM_VALUE.N_2 { PARAM_VALUE.N_2 } {
	# Procedure called to update N_2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.N_2 { PARAM_VALUE.N_2 } {
	# Procedure called to validate N_2
	return true
}


proc update_MODELPARAM_VALUE.M { MODELPARAM_VALUE.M PARAM_VALUE.M } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M}] ${MODELPARAM_VALUE.M}
}

proc update_MODELPARAM_VALUE.N_1 { MODELPARAM_VALUE.N_1 PARAM_VALUE.N_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.N_1}] ${MODELPARAM_VALUE.N_1}
}

proc update_MODELPARAM_VALUE.N_2 { MODELPARAM_VALUE.N_2 PARAM_VALUE.N_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.N_2}] ${MODELPARAM_VALUE.N_2}
}
