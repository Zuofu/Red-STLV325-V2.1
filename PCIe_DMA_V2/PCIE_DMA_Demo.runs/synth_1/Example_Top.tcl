# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7k325tffg676-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.cache/wt [current_project]
set_property parent.project_path F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_cache_permissions disable [current_project]
read_verilog -library xil_defaultlib {
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/common_functions.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/async_fifo.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/async_fifo_fwft.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/channel_128.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/channel_32.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/channel_64.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/cross_domain_signal.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/demux_1_to_n.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/ff.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/fifo_packer_128.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/fifo_packer_32.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/fifo_packer_64.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/interrupt.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/interrupt_controller.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_gt_common.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_gt_wrapper.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_gtp_cpllpd_ovrd.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_gtp_pipe_drp.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_gtp_pipe_rate.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_gtp_pipe_reset.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_gtx_cpllpd_ovrd.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_pipe_clock.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_pipe_drp.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_pipe_eq.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_pipe_rate.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_pipe_reset.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_pipe_sync.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_pipe_user.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_pipe_wrapper.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_qpll_drp.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_qpll_reset.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_qpll_wrapper.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_rxeq_scan.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/ram_1clk_1w_1r.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/ram_2clk_1w_1r.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/recv_credit_flow_ctrl.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/reorder_queue.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/reorder_queue_input.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/reorder_queue_output.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/riffa_adapter_pcie_7x_v2_1.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/riffa_endpoint.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/riffa_endpoint_128.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/riffa_endpoint_32.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/riffa_endpoint_64.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/riffa_top_pcie_7x_v2_1.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/rx_engine_128.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/rx_engine_32.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/rx_engine_64.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/rx_engine_req.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/rx_port_128.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/rx_port_32.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/rx_port_64.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/rx_port_channel_gate.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/rx_port_reader.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/rx_port_requester_mux.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/sg_list_reader_128.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/sg_list_reader_32.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/sg_list_reader_64.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/sg_list_requester.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/sync_fifo.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/syncff.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/translation_layer.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/translation_layer_128.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/translation_layer_32.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/translation_layer_64.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_engine_128.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_engine_32.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_engine_64.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_engine_formatter_128.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_engine_formatter_32.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_engine_formatter_64.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_engine_lower_128.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_engine_lower_32.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_engine_lower_64.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_engine_selector.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_engine_upper_128.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_engine_upper_32.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_engine_upper_64.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_port_128.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_port_32.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_port_64.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_port_buffer_128.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_port_buffer_32.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_port_buffer_64.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_port_channel_gate_128.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_port_channel_gate_32.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_port_channel_gate_64.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_port_monitor_128.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_port_monitor_32.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_port_monitor_64.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_port_writer.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_qword_aligner_128.v
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/riffa/tx_qword_aligner_64.v
}
read_vhdl -library xil_defaultlib {
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/chnl_tester.vhd
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/pcie_gen2x4_wrapper.vhd
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4.vhd
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_axi_basic_rx.vhd
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_axi_basic_rx_null_gen.vhd
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_axi_basic_rx_pipeline.vhd
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_axi_basic_top.vhd
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_axi_basic_tx.vhd
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_axi_basic_tx_pipeline.vhd
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_axi_basic_tx_thrtl_ctl.vhd
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_core_top.vhd
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_gt_rx_valid_filter_7x.vhd
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_gt_top.vhd
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_pcie2_top.vhd
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_pcie_7x.vhd
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_pcie_bram_7x.vhd
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_pcie_bram_top_7x.vhd
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_pcie_brams_7x.vhd
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_pcie_pipe_lane.vhd
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_pcie_pipe_misc.vhd
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_pcie_pipe_pipeline.vhd
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/ep_core/pcie_k7_gen2x4_pcie_top.vhd
  F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/Example_Top.vhd
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/pcie_7k325.xdc
set_property used_in_implementation false [get_files F:/K325667/PCIe_DMA_V2_5031_spix4_ok/PCIe_DMA_V2_5031_spix4_ok/PCIE_DMA_Demo.src/pcie_7k325.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top Example_Top -part xc7k325tffg676-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef Example_Top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file Example_Top_utilization_synth.rpt -pb Example_Top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]