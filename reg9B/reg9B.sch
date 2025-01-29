VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL d(71:0)
        SIGNAL q(71:0)
        SIGNAL clk
        SIGNAL ce
        SIGNAL clr
        SIGNAL d(71:64)
        SIGNAL d(63:48)
        SIGNAL d(47:32)
        SIGNAL d(31:16)
        SIGNAL d(15:0)
        SIGNAL q(71:64)
        SIGNAL q(63:48)
        SIGNAL q(47:32)
        SIGNAL q(31:16)
        SIGNAL q(15:0)
        SIGNAL XLXN_28
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        SIGNAL XLXN_32
        SIGNAL XLXN_37
        SIGNAL XLXN_38
        SIGNAL XLXN_39
        SIGNAL XLXN_40
        SIGNAL XLXN_41
        SIGNAL XLXN_42
        SIGNAL XLXN_43
        SIGNAL XLXN_44
        SIGNAL XLXN_45
        SIGNAL XLXN_46
        SIGNAL XLXN_47
        PORT Input d(71:0)
        PORT Output q(71:0)
        PORT Input clk
        PORT Input ce
        PORT Input clr
        BEGIN BLOCKDEF fd16ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -320 320 -64 
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
        BEGIN BLOCK XLXI_6 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(63:48)
            PIN Q(15:0) q(63:48)
        END BLOCK
        BEGIN BLOCK XLXI_7 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(47:32)
            PIN Q(15:0) q(47:32)
        END BLOCK
        BEGIN BLOCK XLXI_8 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(31:16)
            PIN Q(15:0) q(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_9 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(15:0)
            PIN Q(15:0) q(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_10 fd8ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(7:0) d(71:64)
            PIN Q(7:0) q(71:64)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH d(71:0)
            WIRE 1408 2240 1568 2240
        END BRANCH
        IOMARKER 1408 2240 d(71:0) R180 28
        BEGIN BRANCH q(71:0)
            WIRE 1744 2240 1904 2240
        END BRANCH
        IOMARKER 1904 2240 q(71:0) R0 28
        INSTANCE XLXI_6 1568 832 R0
        INSTANCE XLXI_7 1600 1232 R0
        INSTANCE XLXI_8 1584 1632 R0
        INSTANCE XLXI_9 1584 2032 R0
        BEGIN BRANCH clr
            WIRE 1184 2080 1344 2080
            WIRE 1344 2000 1344 2080
            WIRE 1344 2000 1472 2000
            WIRE 1472 2000 1584 2000
            WIRE 1472 368 1568 368
            WIRE 1472 368 1472 800
            WIRE 1472 800 1568 800
            WIRE 1472 800 1472 1200
            WIRE 1472 1200 1600 1200
            WIRE 1472 1200 1472 1600
            WIRE 1472 1600 1584 1600
            WIRE 1472 1600 1472 2000
        END BRANCH
        IOMARKER 1184 1952 clk R180 28
        IOMARKER 1200 1856 ce R180 28
        IOMARKER 1184 2080 clr R180 28
        BEGIN BRANCH d(71:64)
            WIRE 1312 144 1568 144
            BEGIN DISPLAY 1312 144 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(63:48)
            WIRE 1360 576 1568 576
            BEGIN DISPLAY 1360 576 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(47:32)
            WIRE 1344 976 1600 976
            BEGIN DISPLAY 1344 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(31:16)
            WIRE 1344 1376 1584 1376
            BEGIN DISPLAY 1344 1376 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(15:0)
            WIRE 1360 1776 1584 1776
            BEGIN DISPLAY 1360 1776 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_10 1568 400 R0
        BEGIN BRANCH q(71:64)
            WIRE 1952 144 2176 144
            BEGIN DISPLAY 2176 144 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(63:48)
            WIRE 1952 576 2144 576
            BEGIN DISPLAY 2144 576 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(47:32)
            WIRE 1984 976 2144 976
            BEGIN DISPLAY 2144 976 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(31:16)
            WIRE 1968 1376 2160 1376
            BEGIN DISPLAY 2160 1376 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(15:0)
            WIRE 1968 1776 2176 1776
            BEGIN DISPLAY 2176 1776 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ce
            WIRE 1200 1856 1360 1856
            WIRE 1360 1840 1360 1856
            WIRE 1360 1840 1504 1840
            WIRE 1504 1840 1584 1840
            WIRE 1504 208 1568 208
            WIRE 1504 208 1504 640
            WIRE 1504 640 1568 640
            WIRE 1504 640 1504 1040
            WIRE 1504 1040 1600 1040
            WIRE 1504 1040 1504 1440
            WIRE 1504 1440 1584 1440
            WIRE 1504 1440 1504 1840
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1184 1952 1344 1952
            WIRE 1344 1904 1344 1952
            WIRE 1344 1904 1424 1904
            WIRE 1424 1904 1584 1904
            WIRE 1424 272 1568 272
            WIRE 1424 272 1424 704
            WIRE 1424 704 1568 704
            WIRE 1424 704 1424 1104
            WIRE 1424 1104 1600 1104
            WIRE 1424 1104 1424 1504
            WIRE 1424 1504 1584 1504
            WIRE 1424 1504 1424 1904
        END BRANCH
    END SHEET
END SCHEMATIC
