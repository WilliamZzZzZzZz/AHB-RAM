`ifndef AHBRAM_SCOREBOARD_SV
`define AHBRAM_SCOREBOARD_SV

class ahbram_scoreboard extends ahbram_subscriber;

    `uvm_component_utils(ahbram_scoreboard)

    function new(string name = "ahbram_scoreboard", uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
    endfunction

    task run_phase(uvm_phase phase);
        super.run_phase(phase);
        do_data_check();
    endtask

    virtual task do_data_check();

    endtask

endclass

`endif 