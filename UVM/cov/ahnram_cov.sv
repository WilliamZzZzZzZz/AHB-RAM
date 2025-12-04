`ifndef AHBRAM_COV_SV
`define AHBRAM_COV_SV
class ahbram_cov extends ahbram_subscriber;
    // Coverage related members can be added here

    `uvm_component_utils(ahbram_cov)

    function new(string name = "ahbram_cov", uvm_component parent);
        super.new(name, parent);
    endfunction

    // Coverage collection and reporting methods can be added here
    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        // Initialize coverage models here
    endfunction

    task do_listen_events();

    endtask
endclass

`endif