`ifndef AHB_MASTER_SINGLE_SEQUENCE_SV
`define AHB_MASTER_SINGLE_SEQUENCE_SV

class ahb_master_single_sequence extends ahb_base_sequence;

    rand bit [AHB_MAX_ADDR_WIDTH - 1:0] addr;
    rand bit [AHB_MAX_DATA_WIDTH - 1:0] data;
    rand xact_type_enum xact;
    rand burst_size_enum bsize;

    constraint single_trans_cstr {
        xact inside {READ, WRITE};
    }

    `uvm_object_utils(ahb_master_single_sequence)

    function new(string name = "ahb_master_single_sequence");
        super.new(name);
    endfunction

    virtual task body();
        `uvm_info(get_type_name(), "Starting sequence", UVM_HIGH)
        `uvm_do_with(req, {
                            addr == local::addr;
                            
                            })
    endtask
endclass

`endif