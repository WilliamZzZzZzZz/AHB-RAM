`ifndef AHBRAM_VIRTUAL_SEQUENCER_SV
`define AHBRAM_VIRTUAL_SEQUENCER_SV

class ahbram_virtual_sequencer extends uvm_sequencer;

    ahbram_configuration cfg;
    ahb_master_sequencer ahb_mst_sqr;

    `uvm_component_utils(ahbram_virtual_sequencer)

    function new(string name = "ahbram_virtual_sequencer", uvm_component parent);
        super.new(name, parent);
    endfunction


    
endclass

`endif 