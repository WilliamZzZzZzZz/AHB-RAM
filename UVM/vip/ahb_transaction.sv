`ifndef AHB_TRANSACTION_SV
`define AHB_TRANSACTION_SV

class ahb_transaction extends uvm_sequence_item;
    `uvm_object_utils_begin(ahb_transaction)
    `uvm_object_utils_end

    function new(string name = "ahb_transaction")
        super.new(name);
    endfunction
endclass

`endif 