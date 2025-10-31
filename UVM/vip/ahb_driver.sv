`ifndef AHB_DRIVER_SV
`define AHB_DRIVER_SV

class ahb_driver #(type REQ = ahb_transaction, type RSP = REQ) extends uvm_driver #(REQ, RSP);
    `uvm_component_utils(ahb_driver)

    function new(string name = "ahb_driver", uvm_parent parent = null);
        super.new(name, parent)
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
    endfunction

    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction

    task run_phase(uvm_phase phase);
        super.run_phase(phase);
    endtask

endclass

`endif 