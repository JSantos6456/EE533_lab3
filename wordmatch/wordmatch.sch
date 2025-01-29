VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL wildcard(6:0)
        SIGNAL datain(55:0)
        SIGNAL datain(63:8)
        SIGNAL datain(71:16)
        SIGNAL datain(79:24)
        SIGNAL datain(87:32)
        SIGNAL datain(95:40)
        SIGNAL datain(103:48)
        SIGNAL datain(111:56)
        SIGNAL datain(111:0)
        SIGNAL datacomp(55:0)
        SIGNAL XLXN_22(55:0)
        SIGNAL XLXN_23(55:0)
        SIGNAL XLXN_24(55:0)
        SIGNAL XLXN_25(55:0)
        SIGNAL XLXN_26(55:0)
        SIGNAL XLXN_27(55:0)
        SIGNAL XLXN_28(55:0)
        SIGNAL XLXN_29(6:0)
        SIGNAL XLXN_30(6:0)
        SIGNAL XLXN_31(6:0)
        SIGNAL XLXN_32(6:0)
        SIGNAL XLXN_33(6:0)
        SIGNAL XLXN_34(6:0)
        SIGNAL XLXN_35(6:0)
        SIGNAL XLXN_36(6:0)
        SIGNAL match
        SIGNAL XLXN_38
        SIGNAL XLXN_39
        SIGNAL XLXN_40
        SIGNAL XLXN_41
        SIGNAL XLXN_42
        SIGNAL XLXN_43
        SIGNAL XLXN_44
        SIGNAL XLXN_45
        PORT Input wildcard(6:0)
        PORT Input datain(111:0)
        PORT Input datacomp(55:0)
        PORT Output match
        BEGIN BLOCKDEF comparator
            TIMESTAMP 2025 1 29 2 50 44
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF or8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 48 -128 
            LINE N 0 -192 48 -192 
            LINE N 0 -384 48 -384 
            LINE N 0 -448 48 -448 
            LINE N 0 -512 48 -512 
            LINE N 256 -288 192 -288 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            ARC N 28 -336 204 -160 192 -288 112 -336 
            LINE N 112 -240 48 -240 
            ARC N 28 -416 204 -240 112 -240 192 -288 
            ARC N -40 -344 72 -232 48 -240 48 -336 
            LINE N 112 -336 48 -336 
            LINE N 48 -336 48 -512 
            LINE N 48 -64 48 -240 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(55:0)
            PIN match XLXN_38
        END BLOCK
        BEGIN BLOCK XLXI_2 comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(63:8)
            PIN match XLXN_39
        END BLOCK
        BEGIN BLOCK XLXI_3 comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(71:16)
            PIN match XLXN_40
        END BLOCK
        BEGIN BLOCK XLXI_4 comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(79:24)
            PIN match XLXN_41
        END BLOCK
        BEGIN BLOCK XLXI_5 comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(87:32)
            PIN match XLXN_42
        END BLOCK
        BEGIN BLOCK XLXI_6 comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(95:40)
            PIN match XLXN_43
        END BLOCK
        BEGIN BLOCK XLXI_7 comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(103:48)
            PIN match XLXN_44
        END BLOCK
        BEGIN BLOCK XLXI_8 comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(111:56)
            PIN match XLXN_45
        END BLOCK
        BEGIN BLOCK XLXI_9 or8
            PIN I0 XLXN_45
            PIN I1 XLXN_44
            PIN I2 XLXN_43
            PIN I3 XLXN_42
            PIN I4 XLXN_41
            PIN I5 XLXN_40
            PIN I6 XLXN_39
            PIN I7 XLXN_38
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH wildcard(6:0)
            WIRE 336 400 496 400
            WIRE 496 400 496 528
            WIRE 496 528 1040 528
            WIRE 496 528 496 800
            WIRE 496 800 1040 800
            WIRE 496 800 496 1072
            WIRE 496 1072 1040 1072
            WIRE 496 1072 496 1456
            WIRE 496 1456 1056 1456
            WIRE 496 1456 496 1728
            WIRE 496 1728 1056 1728
            WIRE 496 1728 496 2000
            WIRE 496 2000 1056 2000
            WIRE 496 2000 496 2272
            WIRE 496 2272 1056 2272
            WIRE 496 256 1040 256
            WIRE 496 256 496 400
        END BRANCH
        IOMARKER 336 400 wildcard(6:0) R180 28
        BEGIN INSTANCE XLXI_1 1040 288 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1040 560 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1040 832 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1040 1104 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 1056 1488 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 1056 1760 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 1056 2032 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 1056 2304 R0
        END INSTANCE
        BEGIN BRANCH datain(55:0)
            WIRE 848 192 1040 192
            BEGIN DISPLAY 848 192 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(63:8)
            WIRE 864 464 1040 464
            BEGIN DISPLAY 864 464 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(71:16)
            WIRE 848 736 1040 736
            BEGIN DISPLAY 848 736 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(79:24)
            WIRE 864 1008 1040 1008
            BEGIN DISPLAY 864 1008 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(87:32)
            WIRE 912 1392 1056 1392
            BEGIN DISPLAY 912 1392 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(95:40)
            WIRE 864 1664 1056 1664
            BEGIN DISPLAY 864 1664 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(103:48)
            WIRE 880 1936 1056 1936
            BEGIN DISPLAY 880 1936 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(111:56)
            WIRE 880 2208 1056 2208
            BEGIN DISPLAY 880 2208 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(111:0)
            WIRE 288 64 448 64
            BEGIN DISPLAY 448 64 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datacomp(55:0)
            WIRE 304 128 464 128
            WIRE 464 128 592 128
            WIRE 592 128 1040 128
            WIRE 592 128 592 400
            WIRE 592 400 1040 400
            WIRE 592 400 592 672
            WIRE 592 672 1040 672
            WIRE 592 672 592 944
            WIRE 592 944 1040 944
            WIRE 592 944 592 1328
            WIRE 592 1328 1056 1328
            WIRE 592 1328 592 1600
            WIRE 592 1600 1056 1600
            WIRE 592 1600 592 1872
            WIRE 592 1872 1056 1872
            WIRE 592 1872 592 2144
            WIRE 592 2144 1056 2144
        END BRANCH
        IOMARKER 288 64 datain(111:0) R180 28
        IOMARKER 304 128 datacomp(55:0) R180 28
        INSTANCE XLXI_9 2400 1360 R0
        BEGIN BRANCH match
            WIRE 2656 1072 2784 1072
            WIRE 2784 1072 2944 1072
        END BRANCH
        IOMARKER 2944 1072 match R0 28
        BEGIN BRANCH XLXN_38
            WIRE 1424 128 2400 128
            WIRE 2400 128 2400 848
        END BRANCH
        BEGIN BRANCH XLXN_39
            WIRE 1424 400 1904 400
            WIRE 1904 400 1904 912
            WIRE 1904 912 2400 912
        END BRANCH
        BEGIN BRANCH XLXN_40
            WIRE 1424 672 1888 672
            WIRE 1888 672 1888 976
            WIRE 1888 976 2400 976
        END BRANCH
        BEGIN BRANCH XLXN_41
            WIRE 1424 944 1872 944
            WIRE 1872 944 1872 1040
            WIRE 1872 1040 2400 1040
        END BRANCH
        BEGIN BRANCH XLXN_42
            WIRE 1440 1328 1920 1328
            WIRE 1920 1104 1920 1328
            WIRE 1920 1104 2400 1104
        END BRANCH
        BEGIN BRANCH XLXN_43
            WIRE 1440 1600 1936 1600
            WIRE 1936 1168 1936 1600
            WIRE 1936 1168 2400 1168
        END BRANCH
        BEGIN BRANCH XLXN_44
            WIRE 1440 1872 1952 1872
            WIRE 1952 1232 1952 1872
            WIRE 1952 1232 2400 1232
        END BRANCH
        BEGIN BRANCH XLXN_45
            WIRE 1440 2144 2400 2144
            WIRE 2400 1296 2400 2144
        END BRANCH
    END SHEET
END SCHEMATIC
