`ifndef AHBRAM_CONFIGURATION_SV
`define AHBRAM_CONFIGURATION_SV

class ahbram_configuration extends uvm_object;

    int seq_check_count;    
    int seq_check_error;

    ahb_agent_configuration ahb_cfg;
    virtual ahbram_if vif;

    `uvm_object_utils(ahbram_confi guration)

    function new(string name = "ahbram_configuration");
        super.new(name);
        ahb_cfg = ahb_agent_configuration::type_id::create("ahb_cfg");
    endfunction 
endclass

`endif 