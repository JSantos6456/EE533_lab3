VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL pipe1(71:0)
        SIGNAL pipe0(71:0)
        SIGNAL clk
        SIGNAL ce
        SIGNAL mrst
        SIGNAL XLXN_20
        SIGNAL match
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL pipe0(47:0)
        SIGNAL pipe1(63:0)
        SIGNAL XLXN_13(111:0)
        SIGNAL hwregA(55:0)
        SIGNAL hwregA(62:56)
        SIGNAL XLXN_29
        SIGNAL match_en
        SIGNAL XLXN_19
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        SIGNAL XLXN_34
        SIGNAL hwregA(63:0)
        SIGNAL XLXN_36
        PORT Input pipe1(71:0)
        PORT Input clk
        PORT Input ce
        PORT Input mrst
        PORT Output match
        PORT Input match_en
        PORT Input hwregA(63:0)
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
        BEGIN BLOCKDEF busmerge
            TIMESTAMP 2025 1 29 4 27 47
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF wordmatch
            TIMESTAMP 2025 1 29 4 23 58
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 320 -160 384 -160 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
        END BLOCKDEF
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 reg9B
            PIN ce ce
            PIN clk clk
            PIN clr XLXN_22
            PIN d(71:0) pipe1(71:0)
            PIN q(71:0) pipe0(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd
            PIN C clk
            PIN D mrst
            PIN Q XLXN_22
        END BLOCK
        BEGIN BLOCK XLXI_6 fdce
            PIN C clk
            PIN CE XLXN_32
            PIN CLR XLXN_22
            PIN D XLXN_32
            PIN Q match
        END BLOCK
        BEGIN BLOCK XLXI_2 busmerge
            PIN da(47:0) pipe0(47:0)
            PIN db(63:0) pipe1(63:0)
            PIN q(111:0) XLXN_13(111:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 wordmatch
            PIN datacomp(55:0) hwregA(55:0)
            PIN datain(111:0) XLXN_13(111:0)
            PIN match XLXN_19
            PIN wildcard(6:0) hwregA(62:56)
        END BLOCK
        BEGIN BLOCK XLXI_5 and3b1
            PIN I0 match
            PIN I1 match_en
            PIN I2 XLXN_19
            PIN O XLXN_32
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH pipe1(71:0)
            WIRE 656 496 816 496
        END BRANCH
        IOMARKER 656 496 pipe1(71:0) R180 28
        BEGIN INSTANCE XLXI_1 816 720 R0
        END INSTANCE
        BEGIN BRANCH pipe0(71:0)
            WIRE 1200 496 1328 496
            BEGIN DISPLAY 1328 496 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 704 560 784 560
            WIRE 784 560 816 560
            WIRE 784 560 784 1120
            WIRE 784 1120 2448 1120
            WIRE 784 1120 784 1504
            WIRE 784 1504 2080 1504
            WIRE 2448 992 2544 992
            WIRE 2448 992 2448 1120
        END BRANCH
        IOMARKER 704 560 clk R180 28
        BEGIN BRANCH ce
            WIRE 688 624 800 624
            WIRE 800 624 816 624
        END BRANCH
        IOMARKER 688 624 ce R180 28
        INSTANCE XLXI_4 2080 1632 R0
        BEGIN BRANCH mrst
            WIRE 1920 1376 2064 1376
            WIRE 2064 1376 2080 1376
        END BRANCH
        IOMARKER 1920 1376 mrst R180 28
        INSTANCE XLXI_6 2544 1120 R0
        BEGIN BRANCH match
            WIRE 2080 704 2080 896
            WIRE 2080 896 2144 896
            WIRE 2080 704 3024 704
            WIRE 3024 704 3024 864
            WIRE 3024 864 3088 864
            WIRE 2928 864 3024 864
        END BRANCH
        IOMARKER 3088 864 match R0 28
        BEGIN BRANCH XLXN_22
            WIRE 800 688 816 688
            WIRE 800 688 800 1632
            WIRE 800 1632 2544 1632
            WIRE 2464 1376 2544 1376
            WIRE 2544 1376 2544 1632
            WIRE 2544 1088 2544 1376
        END BRANCH
        BEGIN INSTANCE XLXI_2 864 992 R0
        END INSTANCE
        BEGIN BRANCH pipe0(47:0)
            WIRE 752 896 864 896
            BEGIN DISPLAY 752 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pipe1(63:0)
            WIRE 752 960 864 960
            BEGIN DISPLAY 752 960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_3 1488 928 R0
        END INSTANCE
        BEGIN BRANCH XLXN_13(111:0)
            WIRE 1248 896 1488 896
        END BRANCH
        BEGIN BRANCH hwregA(55:0)
            WIRE 1392 832 1408 832
            WIRE 1408 832 1488 832
            BEGIN DISPLAY 1404 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hwregA(62:56)
            WIRE 1328 768 1488 768
            BEGIN DISPLAY 1328 768 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH match_en
            WIRE 1792 1072 1952 1072
            WIRE 1952 832 2144 832
            WIRE 1952 832 1952 1072
        END BRANCH
        INSTANCE XLXI_5 2144 960 R0
        BEGIN BRANCH XLXN_19
            WIRE 1872 768 2144 768
        END BRANCH
        IOMARKER 1792 1072 match_en R180 28
        BEGIN BRANCH XLXN_32
            WIRE 2400 832 2464 832
            WIRE 2464 832 2464 864
            WIRE 2464 864 2544 864
            WIRE 2464 864 2464 928
            WIRE 2464 928 2544 928
        END BRANCH
        BEGIN BRANCH hwregA(63:0)
            WIRE 576 304 736 304
            BEGIN DISPLAY 736 304 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 576 304 hwregA(63:0) R180 28
    END SHEET
END SCHEMATIC
