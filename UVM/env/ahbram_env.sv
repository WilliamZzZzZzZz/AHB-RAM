`ifndef AHBRAM_ENV_SV
`define AHBRAM_ENV_SV

class ahbram_env extends uvm_env;
    ahb_master_agent ahb_mst;
    ahbram_configuration cfg;

    `uvm_component_utils(ahbram_env)

    function new(string name = "ahbram_env", uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
    endfunction
endclass

`endif 