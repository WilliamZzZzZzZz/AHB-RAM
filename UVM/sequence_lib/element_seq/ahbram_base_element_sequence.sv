`ifndef AHBRAM_BASE_ELEMENT_SEQUENCE_SV
`define AHBRAM_BASE_ELEMENT_SEQUENCE_SV

class ahbram_base_element_sequence extends uvm_sequence;

    `uvm_object_utils(ahbram_base_element_sequence)

    function new(string name = "ahbram_base_element_sequence");
        super.new(name);
    endfunction

    virtual task body();
        
    endtask

endclass

`endif 