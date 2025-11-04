`ifndef AHB_MASTER_DRIVER_SV
`define AHB_MASTER_DRIVER_SV

class ahb_master_driver extends ahb_driver;
    `uvm_component_utils(ahb_master_driver)

    function new(string name = "ahb_master_driver", uvm_component parent = null);
        super.new(name,parent);
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

    virtual task drive_transfer(REQ t);
        case(t.burst_type)
            SINGLE: begin do_atomic_trans(t);   end
            //...
            //...
            default: begin `uvm_error("TYPE-ERROR", "this burst type not defined") end
        endcase
    endtask

    virtual task do_atomic_trans(REQ t);
        case(t.xact_type)
            READ:       do_read(t);
            WRITE:      do_write(t);
            IDLE_XACT : begin `uvm_error("TYPEERR", "trans type not supported yet") end
            default:    begin `uvm_error("TYPEERR", "trans type not defined") end
        endcase
    endtask

    virtual task wait_for_bus_grant();
        @(vif.cb_mst iff vif.cb_mst.hgrant === 1'b1);
    endtask

    virtual task do_write(REQ t);
        do_init_write(t);
        do_proc_write(t);
    endtask

    virtual task do_read(REQ t);
        do_init_read(t);
        do_proc_read(t);
    endtask

    virtual task do_init_write(REQ t);
        wait_for_bus_grant();
        vif.cb_mst.htrans <= NSEQ;
        vif.cb_mst.haddr  <= t.addr;
        vif.cb_mst.hburst <= 
    endtask
endclass

`endif 