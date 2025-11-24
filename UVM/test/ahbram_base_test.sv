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
        if(!uvm_config_db#(virtual ahbram_if)::get(this, "", "vif", cfg.vif))
            `uvm_fatal("GETCFG", "cannot get virtual interface from config db")
        uvm_config_db#(ahbram_configuration)::set(this, "env", "cfg", cfg);

        env = ahbram_env::type_id::create("env", this);
    endfunction

    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction

    task run_phase(uvm_phase phase);
        super.run_phase(phase);
        //when all run phase over, wait 1us than enter next phase
        //this setting could let monitor, coverage have enough time to collect full data
        phase.phase_done.set_drain_time(this, 1us);
    endtask
    
endclass

`endif      