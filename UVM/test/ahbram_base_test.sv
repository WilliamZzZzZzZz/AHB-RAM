`ifndef AHBRAM_BASE_TEST_SV
`define AHBRAM_BASE_TEST_SV

virtual class ahbram_base_test extends uvm_test;
    ahbram_configuration cfg;
    ahbram_env env;

    function new(string name = "ahbram_base_test", uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if(!uvm_config_db#(virtual ahbram_if))
    endfunction
endclass

`endif 