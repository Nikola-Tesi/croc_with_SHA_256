onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group {Reset & Clocks}  -label rst_ni /tb_croc_soc/i_croc_soc/rst_ni
add wave -noupdate -expand -group {Reset & Clocks}  -label clk_i /tb_croc_soc/i_croc_soc/clk_i
add wave -noupdate -expand -group {Reset & Clocks}  -label ref_clk_i /tb_croc_soc/i_croc_soc/ref_clk_i
add wave -noupdate -expand -group {Mode & Status}   -label testmode_i /tb_croc_soc/i_croc_soc/testmode_i
add wave -noupdate -expand -group {Mode & Status}   -label fetch_en_i /tb_croc_soc/i_croc_soc/fetch_en_i
add wave -noupdate -expand -group {Mode & Status}   -label status_o /tb_croc_soc/i_croc_soc/status_o
add wave -noupdate -expand -group JTAG              -label jtag_tck_i /tb_croc_soc/i_croc_soc/jtag_tck_i
add wave -noupdate -expand -group JTAG              -label jtag_tdi_i /tb_croc_soc/i_croc_soc/jtag_tdi_i
add wave -noupdate -expand -group JTAG              -label jtag_tdo_o /tb_croc_soc/i_croc_soc/jtag_tdo_o
add wave -noupdate -expand -group JTAG              -label jtag_tms_i /tb_croc_soc/i_croc_soc/jtag_tms_i
add wave -noupdate -expand -group JTAG              -label jtag_trst_ni /tb_croc_soc/i_croc_soc/jtag_trst_ni
add wave -noupdate -expand -group UART              -label uart_rx_i /tb_croc_soc/i_croc_soc/uart_rx_i
add wave -noupdate -expand -group UART              -label uart_tx_o /tb_croc_soc/i_croc_soc/uart_tx_o
add wave -noupdate -expand -group GPIO              -label gpio_i /tb_croc_soc/i_croc_soc/gpio_i
add wave -noupdate -expand -group GPIO              -label gpio_o /tb_croc_soc/i_croc_soc/gpio_o
add wave -noupdate -expand -group GPIO              -label gpio_out_en_o /tb_croc_soc/i_croc_soc/gpio_out_en_o
add wave -noupdate         -group {Core OBI}        -label i_croc/core_instr_obi_req /tb_croc_soc/i_croc_soc/i_croc/core_instr_obi_req
add wave -noupdate         -group {Core OBI}        -label i_croc/core_instr_obi_rsp /tb_croc_soc/i_croc_soc/i_croc/core_instr_obi_rsp
add wave -noupdate         -group {Core OBI}        -label i_croc/core_data_obi_req /tb_croc_soc/i_croc_soc/i_croc/core_data_obi_req
add wave -noupdate         -group {Core OBI}        -label i_croc/core_data_obi_rsp /tb_croc_soc/i_croc_soc/i_croc/core_data_obi_rsp
add wave -noupdate         -group {User Domain OBI} -label i_user/user_sbr_obi_req_i /tb_croc_soc/i_croc_soc/i_user/user_sbr_obi_req_i
add wave -noupdate         -group {User Domain OBI} -label i_user/user_sbr_obi_rsp_o /tb_croc_soc/i_croc_soc/i_user/user_sbr_obi_rsp_o
add wave -noupdate         -group {User Domain OBI} -label i_user/user_mgr_obi_req_o /tb_croc_soc/i_croc_soc/i_user/user_mgr_obi_req_o
add wave -noupdate         -group {User Domain OBI} -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/user_mgr_obi_rsp_i

add wave -noupdate          tb_croc_soc/i_croc_soc/i_user/user_sbr_obi_req_i
add wave -noupdate          tb_croc_soc/i_croc_soc/i_user/user_sbr_obi_rsp_o
add wave -noupdate          tb_croc_soc/i_croc_soc/i_user/user_mgr_obi_req_o 
add wave -noupdate          tb_croc_soc/i_croc_soc/i_user/user_mgr_obi_rsp_i

add wave -noupdate         -group {Control acc}     -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/user_mgr_obi_rsp_i
add wave -noupdate         -group {Control acc}     -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/user_mgr_obi_req_o 
add wave -noupdate         -group {Control acc}     -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/words_q
add wave -noupdate         -group {Control acc}     -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/words_d
add wave -noupdate         -group {Control acc}     -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/hout_q
add wave -noupdate         -group {Control acc}     -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/coun_h_q
add wave -noupdate         -group {Control acc}     -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/coun_io_q
add wave -noupdate         -group {Control acc}     -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/state_q

add wave -noupdate         -group {input_handling}  -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/input_handling/mem_addr_q
add wave -noupdate         -group {input_handling}  -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/input_handling/mem_addr_d
add wave -noupdate         -group {input_handling}  -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/read_q
add wave -noupdate         -group {input_handling}  -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/input_handling/gnt_croc
add wave -noupdate         -group {input_handling}  -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/input_handling/gnt_acc
add wave -noupdate         -group {input_handling}  -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/input_handling/addr_croc
add wave -noupdate         -group {input_handling}  -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/input_handling/start_mem_addr
add wave -noupdate         -group {input_handling}  -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/input_handling/check
add wave -noupdate         -group {input_handling}  -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/input_handling/bits_for_rdata_q
add wave -noupdate         -group {input_handling}  -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/input_handling/bits_for_rdata_d
add wave -noupdate         -group {input_handling}  -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/input_handling/rdata_croc
add wave -noupdate         -group {input_handling}  -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/req_o_q
add wave -noupdate         -group {input_handling}  -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/req_o_d
add wave -noupdate         -group {input_handling}  -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/addr_o
add wave -noupdate         -group {input_handling}  -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/rdata_inp_hand

add wave -noupdate         -group {Hashing}         -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/ato_h_q
add wave -noupdate         -group {Hashing}         -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/ato_h_d
add wave -noupdate         -group {Hashing}         -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/kkk_main_comb
add wave -noupdate         -group {Hashing}         -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/wkk_main_comb
add wave -noupdate         -group {Hashing}         -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/ato_h_new_comb
add wave -noupdate         -group {Hashing}         -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/second_iteration_q

add wave -noupdate         -group {HOutxDO-memory}  -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/hout_q
add wave -noupdate         -group {HOutxDO-memory}  -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/hout_d
add wave -noupdate         -group {HOutxDO-memory}  -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/ato_h_q
add wave -noupdate         -group {HOutxDO-memory}  -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/ato_h_d

add wave -noupdate         -group {output}          -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/addr_inp_hand
add wave -noupdate         -group {output}          -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/rdata_inp_hand
add wave -noupdate         -group {output}          -label i_user/user_mgr_obi_rsp_i /tb_croc_soc/i_croc_soc/i_user/ethz_sha2/addr_o
update
