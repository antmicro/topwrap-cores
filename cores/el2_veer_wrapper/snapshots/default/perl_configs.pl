#  Copyright 2019-2026 Western Digital Corporation or its affiliates.
#  Copyright 2022-2026 Antmicro <www.antmicro.com>
# 
#  SPDX-License-Identifier: Apache-2.0
#  Licensed under the Apache License, Version 2.0, see LICENSE for details.
# 
#  This is an automatically generated file by wojciech on Wed Oct 14 09:40:06 CEST 2026
# 
#  cmd:    veer -fpga_optimize=1 -unset=assert_on -set=reset_vec=0x80000000 -set=ret_stack_size=2 -set=btb_enable=0 -set=btb_size=8 -set=bht_size=32 -set=dccm_size=16 -set=dccm_num_banks=2 -set=iccm_enable=0 -set=icache_enable=0 -set=dccm_enable=0 -set=dma_buf_depth=2 -set=div_bit=1 -set=pic_total_int=8 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'triggers' => [
                            {
                              'poke_mask' => [
                                               '0x081818c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ],
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ],
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ]
                            },
                            {
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ],
                              'poke_mask' => [
                                               '0x081810c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ],
                              'mask' => [
                                          '0x081810c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ]
                            },
                            {
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ],
                              'poke_mask' => [
                                               '0x081818c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ],
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ]
                            },
                            {
                              'poke_mask' => [
                                               '0x081810c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ],
                              'mask' => [
                                          '0x081810c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ],
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ]
                            }
                          ],
            'regwidth' => '32',
            'target' => 'default',
            'harts' => 1,
            'bht' => {
                       'bht_size' => 32,
                       'bht_ghr_hash_1' => '',
                       'bht_ghr_size' => 4,
                       'bht_addr_hi' => 5,
                       'bht_hash_string' => '{hashin[4+1:2]^ghr[4-1:0]}// cf2',
                       'bht_array_depth' => 16,
                       'bht_addr_lo' => '2',
                       'bht_ghr_range' => '3:0'
                     },
            'max_mmode_perf_event' => '516',
            'btb' => {
                       'btb_index3_lo' => 9,
                       'btb_index3_hi' => 11,
                       'btb_btag_fold' => 0,
                       'btb_index2_lo' => 6,
                       'btb_fold2_index_hash' => 0,
                       'btb_index2_hi' => 8,
                       'btb_btag_size' => 31,
                       'btb_array_depth' => 'derived',
                       'btb_addr_hi' => 5,
                       'btb_toffset_size' => '12',
                       'btb_size' => 8,
                       'btb_index1_hi' => 5,
                       'btb_index1_lo' => '2',
                       'btb_addr_lo' => '2',
                       'btb_fullya' => 1
                     },
            'nmi_vec' => '0x11110000',
            'testbench' => {
                             'SDVT_AHB' => 0,
                             'ext_addrwidth' => '32',
                             'clock_period' => '100',
                             'build_axi_native' => 1,
                             'sterr_rollback' => '0',
                             'CPU_TOP' => '`RV_TOP.veer',
                             'ext_datawidth' => '64',
                             'lderr_rollback' => '1',
                             'RV_TOP' => '`TOP.rvtop_wrapper.rvtop',
                             'build_axi4' => 1,
                             'TOP' => 'tb_top'
                           },
            'iccm' => {
                        'iccm_bank_index_lo' => 4,
                        'iccm_sadr' => '0xee000000',
                        'iccm_ecc_width' => '7',
                        'iccm_region' => '0xe',
                        'iccm_num_banks_4' => '',
                        'iccm_size_64' => '',
                        'iccm_bits' => 16,
                        'iccm_eadr' => '0xee00ffff',
                        'iccm_bank_hi' => 3,
                        'iccm_size' => 64,
                        'iccm_rows' => '4096',
                        'iccm_index_bits' => 12,
                        'iccm_offset' => '0xe000000',
                        'iccm_num_banks' => '4',
                        'iccm_bank_bits' => 2,
                        'iccm_reserved' => '0x1000',
                        'iccm_data_cell' => 'ram_4096x39'
                      },
            'retstack' => {
                            'ret_stack_size' => '2'
                          },
            'xlen' => 32,
            'perf_events' => [
                               1,
                               2,
                               3,
                               4,
                               5,
                               6,
                               7,
                               8,
                               9,
                               10,
                               11,
                               12,
                               13,
                               14,
                               15,
                               16,
                               17,
                               18,
                               19,
                               20,
                               21,
                               22,
                               23,
                               24,
                               25,
                               26,
                               27,
                               28,
                               30,
                               31,
                               32,
                               34,
                               35,
                               36,
                               37,
                               38,
                               39,
                               40,
                               41,
                               42,
                               43,
                               44,
                               45,
                               46,
                               47,
                               48,
                               49,
                               50,
                               54,
                               55,
                               56,
                               512,
                               513,
                               514,
                               515,
                               516
                             ],
            'icache' => {
                          'icache_num_lines_way' => '128',
                          'icache_size' => 16,
                          'icache_data_width' => 64,
                          'icache_num_ways' => 2,
                          'icache_banks_way' => 2,
                          'icache_bank_hi' => 3,
                          'icache_data_index_lo' => 4,
                          'icache_tag_bypass_enable' => '1',
                          'icache_bypass_enable' => '1',
                          'icache_num_lines' => 256,
                          'icache_num_lines_bank' => '64',
                          'icache_2banks' => '1',
                          'icache_waypack' => '1',
                          'icache_tag_cell' => 'ram_128x25',
                          'icache_ln_sz' => 64,
                          'icache_scnd_last' => 6,
                          'icache_status_bits' => 1,
                          'icache_index_hi' => 12,
                          'icache_fdata_width' => 71,
                          'icache_data_cell' => 'ram_512x71',
                          'icache_bank_bits' => 1,
                          'icache_tag_num_bypass_width' => 2,
                          'icache_tag_lo' => 13,
                          'icache_tag_index_lo' => '6',
                          'icache_tag_num_bypass' => '2',
                          'icache_data_depth' => '512',
                          'icache_num_bypass' => '2',
                          'icache_num_bypass_width' => 2,
                          'icache_tag_depth' => 128,
                          'icache_ecc' => '1',
                          'icache_beat_addr_hi' => 5,
                          'icache_num_beats' => 8,
                          'icache_bank_width' => 8,
                          'icache_beat_bits' => 3,
                          'icache_bank_lo' => 3
                        },
            'num_mmode_perf_regs' => '4',
            'pic' => {
                       'pic_meigwctrl_count' => 8,
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_meipl_offset' => '0x0000',
                       'pic_total_int_plus1' => 9,
                       'pic_meie_mask' => '0x1',
                       'pic_size' => 32,
                       'pic_meie_count' => 8,
                       'pic_region' => '0xf',
                       'pic_meipt_offset' => '0x3004',
                       'pic_bits' => 15,
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_offset' => '0xc0000',
                       'pic_meip_mask' => '0x0',
                       'pic_meip_count' => 1,
                       'pic_meipl_mask' => '0xf',
                       'pic_meipl_count' => 8,
                       'pic_mpiccfg_mask' => '0x1',
                       'pic_mpiccfg_count' => 1,
                       'pic_int_words' => 1,
                       'pic_base_addr' => '0xf00c0000',
                       'pic_meigwctrl_mask' => '0x3',
                       'pic_meigwclr_mask' => '0x0',
                       'pic_meigwclr_count' => 8,
                       'pic_meip_offset' => '0x1000',
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_meipt_count' => 8,
                       'pic_meie_offset' => '0x2000',
                       'pic_meipt_mask' => '0x0',
                       'pic_total_int' => 8
                     },
            'numiregs' => '32',
            'tec_rv_icg' => 'clockhdr',
            'dccm' => {
                        'dccm_bits' => 14,
                        'dccm_eadr' => '0xf0043fff',
                        'dccm_size' => 16,
                        'dccm_rows' => '2048',
                        'dccm_index_bits' => 11,
                        'dccm_offset' => '0x40000',
                        'lsu_sb_bits' => 14,
                        'dccm_num_banks' => '2',
                        'dccm_bank_bits' => 1,
                        'dccm_num_banks_2' => '',
                        'dccm_reserved' => '0x1400',
                        'dccm_width_bits' => 2,
                        'dccm_data_cell' => 'ram_2048x39',
                        'dccm_fdata_width' => 39,
                        'dccm_size_16' => '',
                        'dccm_sadr' => '0xf0040000',
                        'dccm_ecc_width' => 7,
                        'dccm_data_width' => 32,
                        'dccm_region' => '0xf',
                        'dccm_byte_width' => '4'
                      },
            'user_ec_rv_icg' => 'user_clock_gate',
            'physical' => '1',
            'bus' => {
                       'dma_bus_prty' => '2',
                       'sb_bus_prty' => '2',
                       'ifu_bus_id' => '1',
                       'ifu_bus_tag' => '3',
                       'sb_bus_tag' => '1',
                       'lsu_bus_prty' => '2',
                       'ifu_bus_prty' => '2',
                       'sb_bus_id' => '1',
                       'lsu_bus_tag' => 3,
                       'bus_prty_default' => '3',
                       'lsu_bus_id' => '1',
                       'dma_bus_id' => '1',
                       'dma_bus_tag' => '1'
                     },
            'core' => {
                        'bitmanip_zbp' => 0,
                        'bitmanip_zbr' => 0,
                        'bitmanip_zbe' => 0,
                        'iccm_icache' => 'derived',
                        'dma_buf_depth' => '2',
                        'div_bit' => '1',
                        'bitmanip_zbs' => 1,
                        'lsu_num_nbload' => '4',
                        'iccm_only' => 'derived',
                        'bitmanip_zbb' => 1,
                        'lsu_stbuf_depth' => '4',
                        'bitmanip_zbc' => 1,
                        'lsu2dma' => 0,
                        'lsu_num_nbload_width' => '2',
                        'fpga_optimize' => 1,
                        'bitmanip_zba' => 1,
                        'no_iccm_no_icache' => 1,
                        'bitmanip_zbf' => 0,
                        'fast_interrupt_redirect' => 0,
                        'icache_only' => 'derived',
                        'timer_legal_en' => '1',
                        'div_new' => 1
                      },
            'even_odd_trigger_chains' => 'true',
            'config_key' => '32\'hdeadbeef',
            'memmap' => {
                          'consoleio' => '0xd0580000',
                          'unused_region0' => '0x90000000',
                          'external_data' => '0xc0580000',
                          'unused_region8' => '0x00000000',
                          'serialio' => '0xd0580000',
                          'external_data_1' => '0xb0000000',
                          'unused_region6' => '0x20000000',
                          'unused_region5' => '0x30000000',
                          'unused_region2' => '0x60000000',
                          'unused_region3' => '0x50000000',
                          'unused_region1' => '0x70000000',
                          'debug_sb_mem' => '0xa0580000',
                          'unused_region4' => '0x40000000',
                          'unused_region7' => '0x10000000'
                        },
            'protection' => {
                              'inst_access_mask3' => '0xffffffff',
                              'inst_access_addr1' => '0x00000000',
                              'inst_access_addr0' => '0x00000000',
                              'data_access_addr5' => '0x00000000',
                              'data_access_addr4' => '0x00000000',
                              'data_access_mask2' => '0xffffffff',
                              'inst_access_addr6' => '0x00000000',
                              'inst_access_enable3' => '0x0',
                              'inst_access_enable0' => '0x0',
                              'inst_access_addr7' => '0x00000000',
                              'data_access_enable6' => '0x0',
                              'inst_access_enable2' => '0x0',
                              'data_access_mask5' => '0xffffffff',
                              'pmp_entries' => '16',
                              'data_access_enable1' => '0x0',
                              'inst_access_addr3' => '0x00000000',
                              'inst_access_mask0' => '0xffffffff',
                              'inst_access_mask1' => '0xffffffff',
                              'data_access_enable7' => '0x0',
                              'inst_access_mask7' => '0xffffffff',
                              'inst_access_mask6' => '0xffffffff',
                              'data_access_mask4' => '0xffffffff',
                              'inst_access_enable5' => '0x0',
                              'data_access_addr2' => '0x00000000',
                              'inst_access_enable4' => '0x0',
                              'data_access_mask3' => '0xffffffff',
                              'data_access_addr0' => '0x00000000',
                              'data_access_addr1' => '0x00000000',
                              'inst_access_addr5' => '0x00000000',
                              'inst_access_addr4' => '0x00000000',
                              'inst_access_mask2' => '0xffffffff',
                              'data_access_addr6' => '0x00000000',
                              'data_access_enable3' => '0x0',
                              'data_access_enable0' => '0x0',
                              'inst_access_enable6' => '0x0',
                              'data_access_addr7' => '0x00000000',
                              'data_access_enable2' => '0x0',
                              'inst_access_mask5' => '0xffffffff',
                              'data_access_addr3' => '0x00000000',
                              'data_access_mask0' => '0xffffffff',
                              'data_access_mask1' => '0xffffffff',
                              'inst_access_enable1' => '0x0',
                              'data_access_mask7' => '0xffffffff',
                              'inst_access_enable7' => '0x0',
                              'data_access_mask6' => '0xffffffff',
                              'inst_access_mask4' => '0xffffffff',
                              'data_access_enable5' => '0x0',
                              'data_access_enable4' => '0x0',
                              'inst_access_addr2' => '0x00000000'
                            },
            'reset_vec' => '0x80000000',
            'csr' => {
                       'misa' => {
                                   'mask' => '0x0',
                                   'reset' => '0x40001104',
                                   'exists' => 'true'
                                 },
                       'meicidpl' => {
                                       'reset' => '0x0',
                                       'comment' => 'External interrupt claim id priority level.',
                                       'mask' => '0xf',
                                       'exists' => 'true',
                                       'number' => '0xbcb'
                                     },
                       'mvendorid' => {
                                        'exists' => 'true',
                                        'mask' => '0x0',
                                        'reset' => '0x45'
                                      },
                       'mitcnt0' => {
                                      'mask' => '0xffffffff',
                                      'reset' => '0x0',
                                      'number' => '0x7d2',
                                      'exists' => 'true'
                                    },
                       'mitbnd0' => {
                                      'number' => '0x7d3',
                                      'exists' => 'true',
                                      'mask' => '0xffffffff',
                                      'reset' => '0xffffffff'
                                    },
                       'mimpid' => {
                                     'reset' => '0x4',
                                     'mask' => '0x0',
                                     'exists' => 'true'
                                   },
                       'mhpmcounter5h' => {
                                            'exists' => 'true',
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff'
                                          },
                       'mhpmcounter6' => {
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0',
                                           'exists' => 'true'
                                         },
                       'mstatus' => {
                                      'exists' => 'true',
                                      'mask' => '0x88',
                                      'reset' => '0x1800'
                                    },
                       'marchid' => {
                                      'mask' => '0x0',
                                      'reset' => '0x00000010',
                                      'exists' => 'true'
                                    },
                       'mrac' => {
                                   'exists' => 'true',
                                   'number' => '0x7c0',
                                   'mask' => '0xffffffff',
                                   'comment' => 'Memory region io and cache control.',
                                   'reset' => '0x0',
                                   'shared' => 'true'
                                 },
                       'mhpmcounter4' => {
                                           'exists' => 'true',
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff'
                                         },
                       'mhpmcounter3h' => {
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0',
                                            'exists' => 'true'
                                          },
                       'mcounteren' => {
                                         'exists' => 'false'
                                       },
                       'mfdhs' => {
                                    'number' => '0x7cf',
                                    'exists' => 'true',
                                    'reset' => '0x0',
                                    'comment' => 'Force Debug Halt Status',
                                    'mask' => '0x00000003'
                                  },
                       'dcsr' => {
                                   'exists' => 'true',
                                   'debug' => 'true',
                                   'poke_mask' => '0x00008dcc',
                                   'mask' => '0x00008c04',
                                   'reset' => '0x40000003'
                                 },
                       'mscause' => {
                                      'exists' => 'true',
                                      'number' => '0x7ff',
                                      'mask' => '0x0000000f',
                                      'reset' => '0x0'
                                    },
                       'mitcnt1' => {
                                      'reset' => '0x0',
                                      'mask' => '0xffffffff',
                                      'number' => '0x7d5',
                                      'exists' => 'true'
                                    },
                       'mitbnd1' => {
                                      'mask' => '0xffffffff',
                                      'reset' => '0xffffffff',
                                      'number' => '0x7d6',
                                      'exists' => 'true'
                                    },
                       'mhpmevent3' => {
                                         'exists' => 'true',
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff'
                                       },
                       'dmst' => {
                                   'reset' => '0x0',
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.',
                                   'mask' => '0x0',
                                   'debug' => 'true',
                                   'exists' => 'true',
                                   'number' => '0x7c4'
                                 },
                       'meicurpl' => {
                                       'reset' => '0x0',
                                       'comment' => 'External interrupt current priority level.',
                                       'mask' => '0xf',
                                       'exists' => 'true',
                                       'number' => '0xbcc'
                                     },
                       'mcgc' => {
                                   'exists' => 'true',
                                   'number' => '0x7f8',
                                   'reset' => '0x200',
                                   'poke_mask' => '0x000003ff',
                                   'mask' => '0x000003ff'
                                 },
                       'mhpmevent6' => {
                                         'exists' => 'true',
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff'
                                       },
                       'mfdc' => {
                                   'mask' => '0x00071fff',
                                   'reset' => '0x00070040',
                                   'number' => '0x7f9',
                                   'exists' => 'true'
                                 },
                       'dicago' => {
                                     'mask' => '0x0',
                                     'comment' => 'Cache diagnostics.',
                                     'reset' => '0x0',
                                     'debug' => 'true',
                                     'exists' => 'true',
                                     'number' => '0x7cb'
                                   },
                       'mhpmcounter6h' => {
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0',
                                            'exists' => 'true'
                                          },
                       'mhpmcounter5' => {
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff',
                                           'exists' => 'true'
                                         },
                       'mhpmevent5' => {
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0',
                                         'exists' => 'true'
                                       },
                       'mdccmect' => {
                                       'exists' => 'true',
                                       'number' => '0x7f2',
                                       'mask' => '0xffffffff',
                                       'reset' => '0x0'
                                     },
                       'mcpc' => {
                                   'number' => '0x7c2',
                                   'exists' => 'true',
                                   'reset' => '0x0',
                                   'mask' => '0x0',
                                   'comment' => 'Core pause'
                                 },
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'dicad0' => {
                                     'debug' => 'true',
                                     'mask' => '0xffffffff',
                                     'comment' => 'Cache diagnostics.',
                                     'reset' => '0x0',
                                     'exists' => 'true',
                                     'number' => '0x7c9'
                                   },
                       'dicad1' => {
                                     'exists' => 'true',
                                     'number' => '0x7ca',
                                     'reset' => '0x0',
                                     'comment' => 'Cache diagnostics.',
                                     'mask' => '0x3',
                                     'debug' => 'true'
                                   },
                       'dicawics' => {
                                       'number' => '0x7c8',
                                       'exists' => 'true',
                                       'reset' => '0x0',
                                       'mask' => '0x0130fffc',
                                       'comment' => 'Cache diagnostics.',
                                       'debug' => 'true'
                                     },
                       'mhpmcounter3' => {
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff',
                                           'exists' => 'true'
                                         },
                       'tselect' => {
                                      'mask' => '0x3',
                                      'reset' => '0x0',
                                      'exists' => 'true'
                                    },
                       'mie' => {
                                  'mask' => '0x70000888',
                                  'reset' => '0x0',
                                  'exists' => 'true'
                                },
                       'meipt' => {
                                    'number' => '0xbc9',
                                    'exists' => 'true',
                                    'reset' => '0x0',
                                    'comment' => 'External interrupt priority threshold.',
                                    'mask' => '0xf'
                                  },
                       'mitctl0' => {
                                      'number' => '0x7d4',
                                      'exists' => 'true',
                                      'mask' => '0x00000007',
                                      'reset' => '0x1'
                                    },
                       'cycle' => {
                                    'exists' => 'false'
                                  },
                       'mcountinhibit' => {
                                            'poke_mask' => '0x7d',
                                            'mask' => '0x7d',
                                            'reset' => '0x0',
                                            'commnet' => 'Performance counter inhibit. One bit per counter.',
                                            'exists' => 'true'
                                          },
                       'mhpmcounter4h' => {
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0',
                                            'exists' => 'true'
                                          },
                       'meicpct' => {
                                      'number' => '0xbca',
                                      'exists' => 'true',
                                      'comment' => 'External claim id/priority capture.',
                                      'mask' => '0x0',
                                      'reset' => '0x0'
                                    },
                       'mhartid' => {
                                      'exists' => 'true',
                                      'poke_mask' => '0xfffffff0',
                                      'mask' => '0x0',
                                      'reset' => '0x0'
                                    },
                       'micect' => {
                                     'mask' => '0xffffffff',
                                     'reset' => '0x0',
                                     'number' => '0x7f0',
                                     'exists' => 'true'
                                   },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'mhpmevent4' => {
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0',
                                         'exists' => 'true'
                                       },
                       'mpmc' => {
                                   'mask' => '0x2',
                                   'reset' => '0x2',
                                   'exists' => 'true',
                                   'number' => '0x7c6'
                                 },
                       'mitctl1' => {
                                      'exists' => 'true',
                                      'number' => '0x7d7',
                                      'reset' => '0x1',
                                      'mask' => '0x0000000f'
                                    },
                       'mip' => {
                                  'reset' => '0x0',
                                  'mask' => '0x0',
                                  'poke_mask' => '0x70000888',
                                  'exists' => 'true'
                                },
                       'miccmect' => {
                                       'reset' => '0x0',
                                       'mask' => '0xffffffff',
                                       'exists' => 'true',
                                       'number' => '0x7f1'
                                     },
                       'mfdht' => {
                                    'exists' => 'true',
                                    'number' => '0x7ce',
                                    'shared' => 'true',
                                    'reset' => '0x0',
                                    'mask' => '0x0000003f',
                                    'comment' => 'Force Debug Halt Threshold'
                                  }
                     }
          );
1;
