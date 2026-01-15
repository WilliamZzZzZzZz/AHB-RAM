`ifndef AHBRAM_COV_SV
`define AHBRAM_COV_SV
class ahbram_cov extends ahbram_subscriber;
    // Coverage related members can be added here

    `uvm_component_utils(ahbram_cov)

    covergroup ahbram_t1_address_covergroup(bit [31:0] addr_start, bit [31:0] addr_end) with function sample(bit [31:0] addr);
        option.name = "Test1 AHBRAM address range coverage";
        ADDR: coverpoint addr{
            bins addr_start = {[addr_start : addr_start+3]};
            bins addr_end = {[addr_end-3 : addr_end]};
            bins addr_out_of_range = {[addr_end+1 : 32'hFFFF_FFFF]};
            bins legal_range[16] = {[addr_start : addr_end]};
        }
    endgroup

    function new(string name = "ahbram_cov", uvm_component parent);
        super.new(name, parent);
        ahbram_t1_address_covergroup = new(32'h0000, 32'hFFFF);
    endfunction

    // Coverage collection and reporting methods can be added here
    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        // Initialize coverage models here
    endfunction

    function void write(ahb_transaction tr);
        ahbram_t1_address_covergroup.sample(tr.addr);
    endfunction

    task do_listen_events();

    endtask
endclass

`endif