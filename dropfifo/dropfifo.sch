VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL firstword
        SIGNAL lastword
        SIGNAL clk
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL XLXN_14
        SIGNAL fifowrite
        SIGNAL XLXN_16(7:0)
        SIGNAL XLXN_17
        SIGNAL XLXN_18
        SIGNAL fiforead
        SIGNAL waddr(7:0)
        SIGNAL XLXN_24
        SIGNAL valid_data
        SIGNAL raddr(7:0)
        SIGNAL rst
        SIGNAL XLXN_45
        SIGNAL in_fifo(71:0)
        SIGNAL drop_pkt
        SIGNAL XLXN_52
        SIGNAL in_fifo0(71:0)
        SIGNAL out_fifo(71:0)
        SIGNAL XLXN_64
        PORT Input firstword
        PORT Input lastword
        PORT Input clk
        PORT Input fifowrite
        PORT Input fiforead
        PORT Output valid_data
        PORT Input rst
        PORT Input in_fifo(71:0)
        PORT Input drop_pkt
        PORT Output out_fifo(71:0)
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8cle
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -448 320 -64 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 0 -384 64 -384 
            RECTANGLE N 0 -396 64 -372 
            LINE N 384 -384 320 -384 
            LINE N 384 -192 320 -192 
            RECTANGLE N 320 -396 384 -372 
            LINE N 384 -128 320 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -128 320 -128 
            RECTANGLE N 320 -268 384 -244 
            LINE N 384 -256 320 -256 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 384 -192 320 -192 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF reg9B
            TIMESTAMP 2025 1 29 3 5 55
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -160 0 -160 
            LINE N 64 -32 0 -32 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -236 384 -212 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF dual_port_mem_72bit
            TIMESTAMP 2025 1 30 6 11 0
            RECTANGLE N 32 0 256 496 
            BEGIN LINE W 0 48 32 48 
            END LINE
            BEGIN LINE W 0 80 32 80 
            END LINE
            LINE N 0 112 32 112 
            LINE N 0 240 32 240 
            BEGIN LINE W 0 272 32 272 
            END LINE
            LINE N 0 464 32 464 
            BEGIN LINE W 256 272 288 272 
            END LINE
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd
            PIN C clk
            PIN D firstword
            PIN Q XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_2 fd
            PIN C clk
            PIN D lastword
            PIN Q XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_3 fd8ce
            PIN C clk
            PIN CE XLXN_14
            PIN CLR rst
            PIN D(7:0) waddr(7:0)
            PIN Q(7:0) XLXN_16(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 or2
            PIN I0 XLXN_11
            PIN I1 XLXN_10
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_6 and2b1
            PIN I0 XLXN_52
            PIN I1 XLXN_12
            PIN O XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_7 fd
            PIN C clk
            PIN D fifowrite
            PIN Q XLXN_64
        END BLOCK
        BEGIN BLOCK XLXI_8 comp8
            PIN A(7:0) waddr(7:0)
            PIN B(7:0) raddr(7:0)
            PIN EQ XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_9 comp8
            PIN A(7:0) raddr(7:0)
            PIN B(7:0) XLXN_16(7:0)
            PIN EQ XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_10 cb8cle
            PIN C clk
            PIN CE XLXN_64
            PIN CLR rst
            PIN D(7:0) XLXN_16(7:0)
            PIN L XLXN_52
            PIN CEO
            PIN Q(7:0) waddr(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_13 reg9B
            PIN ce XLXN_45
            PIN clk clk
            PIN clr rst
            PIN d(71:0) in_fifo(71:0)
            PIN q(71:0) in_fifo0(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_14 and3b2
            PIN I0 XLXN_18
            PIN I1 XLXN_17
            PIN I2 fiforead
            PIN O XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_11 cb8ce
            PIN C clk
            PIN CE XLXN_24
            PIN CLR rst
            PIN CEO
            PIN Q(7:0) raddr(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_12 fdc
            PIN C clk
            PIN CLR rst
            PIN D XLXN_24
            PIN Q valid_data
        END BLOCK
        BEGIN BLOCK XLXI_17 vcc
            PIN P XLXN_45
        END BLOCK
        BEGIN BLOCK XLXI_4 fd
            PIN C clk
            PIN D drop_pkt
            PIN Q XLXN_52
        END BLOCK
        BEGIN BLOCK XLXI_19 dual_port_mem_72bit
            PIN addra(7:0) waddr(7:0)
            PIN dina(71:0) in_fifo0(71:0)
            PIN wea XLXN_64
            PIN clka clk
            PIN addrb(7:0) raddr(7:0)
            PIN clkb clk
            PIN doutb(71:0) out_fifo(71:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 432 480 R0
        INSTANCE XLXI_2 432 832 R0
        INSTANCE XLXI_3 432 1232 R0
        BEGIN BRANCH firstword
            WIRE 336 224 432 224
        END BRANCH
        BEGIN BRANCH lastword
            WIRE 352 576 432 576
        END BRANCH
        IOMARKER 336 224 firstword R180 28
        IOMARKER 352 576 lastword R180 28
        INSTANCE XLXI_5 992 544 R0
        BEGIN BRANCH XLXN_10
            WIRE 816 224 896 224
            WIRE 896 224 896 416
            WIRE 896 416 992 416
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 816 576 896 576
            WIRE 896 480 896 576
            WIRE 896 480 992 480
        END BRANCH
        INSTANCE XLXI_6 1328 672 R0
        BEGIN BRANCH XLXN_12
            WIRE 1248 448 1280 448
            WIRE 1280 448 1280 544
            WIRE 1280 544 1328 544
        END BRANCH
        BEGIN BRANCH XLXN_14
            WIRE 368 1040 432 1040
            WIRE 368 1040 368 1280
            WIRE 368 1280 1664 1280
            WIRE 1584 576 1664 576
            WIRE 1664 576 1664 1280
        END BRANCH
        INSTANCE XLXI_7 1344 416 R0
        BEGIN BRANCH fifowrite
            WIRE 1280 160 1344 160
        END BRANCH
        IOMARKER 1280 160 fifowrite R180 28
        INSTANCE XLXI_8 1184 1744 R0
        INSTANCE XLXI_10 1904 1200 R0
        BEGIN INSTANCE XLXI_13 2096 368 R0
        END INSTANCE
        INSTANCE XLXI_14 1616 1616 R0
        BEGIN BRANCH XLXN_17
            WIRE 1568 1520 1584 1520
            WIRE 1584 1488 1584 1520
            WIRE 1584 1488 1616 1488
        END BRANCH
        BEGIN BRANCH XLXN_18
            WIRE 1584 2096 1600 2096
            WIRE 1600 1552 1616 1552
            WIRE 1600 1552 1600 2096
        END BRANCH
        BEGIN BRANCH fiforead
            WIRE 1568 1152 1616 1152
            WIRE 1616 1152 1616 1424
        END BRANCH
        IOMARKER 1568 1152 fiforead R180 28
        BEGIN BRANCH waddr(7:0)
            WIRE 288 976 288 1424
            WIRE 288 1424 1168 1424
            WIRE 1168 1424 1184 1424
            WIRE 288 976 368 976
            WIRE 368 976 432 976
            WIRE 1168 656 1168 1424
            WIRE 1168 656 2400 656
            WIRE 2400 656 2400 816
            WIRE 2400 656 2608 656
            WIRE 2288 816 2368 816
            WIRE 2368 816 2368 816
            WIRE 2368 816 2400 816
            WIRE 2608 592 2608 656
            WIRE 2608 592 2768 592
            BEGIN DISPLAY 370 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 2372 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_11 2016 1680 R0
        INSTANCE XLXI_12 2000 2208 R0
        BEGIN BRANCH XLXN_24
            WIRE 1872 1488 1936 1488
            WIRE 1936 1488 1936 1952
            WIRE 1936 1952 2000 1952
            WIRE 1936 1488 2016 1488
        END BRANCH
        BEGIN BRANCH valid_data
            WIRE 2384 1952 2416 1952
        END BRANCH
        IOMARKER 2416 1952 valid_data R0 28
        INSTANCE XLXI_9 1200 2320 R0
        BEGIN BRANCH XLXN_16(7:0)
            WIRE 816 976 992 976
            WIRE 992 976 992 2192
            WIRE 992 2192 1200 2192
            WIRE 992 816 1904 816
            WIRE 992 816 992 976
        END BRANCH
        IOMARKER 1744 1312 rst R180 28
        BEGIN BRANCH rst
            WIRE 432 1200 432 1248
            WIRE 432 1248 1904 1248
            WIRE 1904 1248 1904 1312
            WIRE 1904 1312 1904 1648
            WIRE 1904 1648 2016 1648
            WIRE 1904 1648 1904 2176
            WIRE 1904 2176 2000 2176
            WIRE 1744 336 2096 336
            WIRE 1744 336 1744 1216
            WIRE 1744 1216 1904 1216
            WIRE 1904 1216 1904 1248
            WIRE 1744 1312 1904 1312
            WIRE 1904 1168 1904 1216
        END BRANCH
        INSTANCE XLXI_17 1776 112 R0
        BEGIN BRANCH XLXN_45
            WIRE 1840 112 1840 192
            WIRE 1840 192 1920 192
            WIRE 1920 192 1920 272
            WIRE 1920 272 2096 272
        END BRANCH
        BEGIN BRANCH in_fifo(71:0)
            WIRE 2064 144 2096 144
        END BRANCH
        IOMARKER 2064 144 in_fifo(71:0) R180 28
        IOMARKER 352 2160 clk R180 28
        IOMARKER 352 2032 drop_pkt R180 28
        INSTANCE XLXI_4 448 2288 R0
        BEGIN BRANCH drop_pkt
            WIRE 352 2032 448 2032
        END BRANCH
        BEGIN BRANCH XLXN_52
            WIRE 832 2032 912 2032
            WIRE 912 608 1328 608
            WIRE 912 608 912 944
            WIRE 912 944 912 2032
            WIRE 912 944 1904 944
        END BRANCH
        BEGIN BRANCH in_fifo0(71:0)
            WIRE 2480 144 2560 144
            WIRE 2560 144 2560 144
            WIRE 2560 144 2592 144
            WIRE 2592 144 2592 624
            WIRE 2592 624 2768 624
            BEGIN DISPLAY 2568 144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 352 2160 400 2160
            WIRE 400 2160 448 2160
            WIRE 400 352 432 352
            WIRE 400 352 400 448
            WIRE 400 448 864 448
            WIRE 400 448 400 704
            WIRE 400 704 432 704
            WIRE 400 704 400 848
            WIRE 400 848 400 1104
            WIRE 400 1104 432 1104
            WIRE 400 1104 400 2160
            WIRE 400 848 1840 848
            WIRE 1840 848 1888 848
            WIRE 1888 848 1888 1072
            WIRE 1888 1072 1904 1072
            WIRE 1888 1072 1888 1184
            WIRE 1888 1184 1888 1552
            WIRE 1888 1552 2016 1552
            WIRE 1888 1552 1888 1632
            WIRE 1888 1184 2592 1184
            WIRE 864 288 1344 288
            WIRE 864 288 864 448
            WIRE 1840 208 2096 208
            WIRE 1840 208 1840 848
            WIRE 1840 1632 1840 2080
            WIRE 1840 2080 2000 2080
            WIRE 1840 1632 1888 1632
            WIRE 2592 784 2768 784
            WIRE 2592 784 2592 848
            WIRE 2592 848 2592 1040
            WIRE 2592 1040 2704 1040
            WIRE 2592 1040 2592 1184
            WIRE 2704 1008 2768 1008
            WIRE 2704 1008 2704 1040
        END BRANCH
        BEGIN BRANCH out_fifo(71:0)
            WIRE 3056 816 3280 816
            WIRE 3280 816 3280 848
            WIRE 3280 848 3312 848
        END BRANCH
        IOMARKER 3312 848 out_fifo(71:0) R0 28
        BEGIN BRANCH XLXN_64
            WIRE 1728 160 1808 160
            WIRE 1808 160 1808 560
            WIRE 1808 560 1808 1008
            WIRE 1808 1008 1904 1008
            WIRE 1808 560 2672 560
            WIRE 2672 560 2672 656
            WIRE 2672 656 2768 656
        END BRANCH
        BEGIN BRANCH raddr(7:0)
            WIRE 1168 1616 1184 1616
            WIRE 1168 1616 1168 1808
            WIRE 1168 1808 2576 1808
            WIRE 1168 1808 1168 2000
            WIRE 1168 2000 1200 2000
            WIRE 2400 1424 2480 1424
            WIRE 2480 1424 2576 1424
            WIRE 2576 1424 2576 1808
            WIRE 2576 848 2576 1424
            WIRE 2576 848 2624 848
            WIRE 2624 848 2704 848
            WIRE 2704 816 2768 816
            WIRE 2704 816 2704 848
            BEGIN DISPLAY 1168 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 1168 2000 ATTR Name
                ALIGNMENT SOFT-TCENTER
            END DISPLAY
            BEGIN DISPLAY 2480 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 2620 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_19 2768 544 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
