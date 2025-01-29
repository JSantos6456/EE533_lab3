VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL amask(6:0)
        SIGNAL a(55:0)
        SIGNAL b(55:0)
        SIGNAL a(55:48)
        SIGNAL b(55:48)
        SIGNAL a(47:40)
        SIGNAL b(47:40)
        SIGNAL a(39:32)
        SIGNAL b(39:32)
        SIGNAL a(31:24)
        SIGNAL b(31:24)
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        SIGNAL amask(6)
        SIGNAL amask(5)
        SIGNAL amask(4)
        SIGNAL amask(3)
        SIGNAL a(23:16)
        SIGNAL b(23:16)
        SIGNAL a(15:8)
        SIGNAL b(15:8)
        SIGNAL a(7:0)
        SIGNAL b(7:0)
        SIGNAL XLXN_35
        SIGNAL XLXN_36
        SIGNAL XLXN_37
        SIGNAL amask(2)
        SIGNAL amask(1)
        SIGNAL amask(0)
        SIGNAL match
        SIGNAL XLXN_44
        SIGNAL XLXN_45
        SIGNAL XLXN_46
        SIGNAL XLXN_47
        SIGNAL XLXN_48
        SIGNAL XLXN_49
        SIGNAL XLXN_50
        PORT Input amask(6:0)
        PORT Input a(55:0)
        PORT Input b(55:0)
        PORT Output match
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF or2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 32 -64 
            CIRCLE N 32 -76 56 -52 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            LINE N 112 -48 48 -48 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -144 48 -144 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            ARC N 28 -224 204 -48 112 -48 192 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and7
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -448 64 -64 
            ARC N 96 -304 192 -208 144 -208 144 -304 
            LINE N 64 -304 144 -304 
            LINE N 144 -208 64 -208 
            LINE N 256 -256 192 -256 
            LINE N 0 -448 64 -448 
            LINE N 0 -384 64 -384 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comp8
            PIN A(7:0) a(55:48)
            PIN B(7:0) b(55:48)
            PIN EQ XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_2 comp8
            PIN A(7:0) a(47:40)
            PIN B(7:0) b(47:40)
            PIN EQ XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_3 comp8
            PIN A(7:0) a(39:32)
            PIN B(7:0) b(39:32)
            PIN EQ XLXN_19
        END BLOCK
        BEGIN BLOCK XLXI_4 comp8
            PIN A(7:0) a(31:24)
            PIN B(7:0) b(31:24)
            PIN EQ XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_5 or2b1
            PIN I0 amask(6)
            PIN I1 XLXN_21
            PIN O XLXN_45
        END BLOCK
        BEGIN BLOCK XLXI_6 or2b1
            PIN I0 amask(5)
            PIN I1 XLXN_20
            PIN O XLXN_47
        END BLOCK
        BEGIN BLOCK XLXI_7 or2b1
            PIN I0 amask(4)
            PIN I1 XLXN_19
            PIN O XLXN_48
        END BLOCK
        BEGIN BLOCK XLXI_8 or2b1
            PIN I0 amask(3)
            PIN I1 XLXN_18
            PIN O XLXN_50
        END BLOCK
        BEGIN BLOCK XLXI_9 comp8
            PIN A(7:0) a(23:16)
            PIN B(7:0) b(23:16)
            PIN EQ XLXN_37
        END BLOCK
        BEGIN BLOCK XLXI_10 comp8
            PIN A(7:0) a(15:8)
            PIN B(7:0) b(15:8)
            PIN EQ XLXN_36
        END BLOCK
        BEGIN BLOCK XLXI_11 comp8
            PIN A(7:0) a(7:0)
            PIN B(7:0) b(7:0)
            PIN EQ XLXN_35
        END BLOCK
        BEGIN BLOCK XLXI_13 or2b1
            PIN I0 amask(2)
            PIN I1 XLXN_37
            PIN O XLXN_44
        END BLOCK
        BEGIN BLOCK XLXI_14 or2b1
            PIN I0 amask(1)
            PIN I1 XLXN_36
            PIN O XLXN_46
        END BLOCK
        BEGIN BLOCK XLXI_16 or2b1
            PIN I0 amask(0)
            PIN I1 XLXN_35
            PIN O XLXN_49
        END BLOCK
        BEGIN BLOCK XLXI_17 and7
            PIN I0 XLXN_50
            PIN I1 XLXN_49
            PIN I2 XLXN_48
            PIN I3 XLXN_47
            PIN I4 XLXN_46
            PIN I5 XLXN_45
            PIN I6 XLXN_44
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH amask(6:0)
            WIRE 1280 528 1440 528
        END BRANCH
        IOMARKER 1280 528 amask(6:0) R180 28
        BEGIN BRANCH a(55:0)
            WIRE 576 448 736 448
        END BRANCH
        BEGIN BRANCH b(55:0)
            WIRE 560 560 720 560
        END BRANCH
        IOMARKER 576 448 a(55:0) R180 28
        IOMARKER 560 560 b(55:0) R180 28
        INSTANCE XLXI_1 784 1088 R0
        INSTANCE XLXI_2 800 1584 R0
        INSTANCE XLXI_3 800 2096 R0
        INSTANCE XLXI_4 816 2592 R0
        BEGIN BRANCH a(55:48)
            WIRE 672 768 784 768
            BEGIN DISPLAY 672 768 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(55:48)
            WIRE 688 960 784 960
            BEGIN DISPLAY 688 960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(47:40)
            WIRE 656 1264 800 1264
            BEGIN DISPLAY 656 1264 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(47:40)
            WIRE 672 1456 800 1456
            BEGIN DISPLAY 672 1456 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(39:32)
            WIRE 640 1776 800 1776
            BEGIN DISPLAY 640 1776 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(39:32)
            WIRE 656 1968 800 1968
            BEGIN DISPLAY 656 1968 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(31:24)
            WIRE 656 2272 816 2272
            BEGIN DISPLAY 656 2272 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(31:24)
            WIRE 656 2464 816 2464
            BEGIN DISPLAY 656 2464 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_5 1360 992 R0
        INSTANCE XLXI_7 1376 2000 R0
        INSTANCE XLXI_8 1440 2496 R0
        BEGIN BRANCH XLXN_18
            WIRE 1200 2368 1440 2368
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 1184 1872 1376 1872
        END BRANCH
        BEGIN BRANCH XLXN_20
            WIRE 1184 1360 1360 1360
        END BRANCH
        INSTANCE XLXI_6 1360 1488 R0
        BEGIN BRANCH XLXN_21
            WIRE 1168 864 1360 864
        END BRANCH
        BEGIN BRANCH amask(6)
            WIRE 1280 928 1360 928
            BEGIN DISPLAY 1280 928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(5)
            WIRE 1280 1424 1360 1424
            BEGIN DISPLAY 1280 1424 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(4)
            WIRE 1296 1936 1376 1936
            BEGIN DISPLAY 1296 1936 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(3)
            WIRE 1328 2432 1440 2432
            BEGIN DISPLAY 1328 2432 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_9 1936 1104 R0
        INSTANCE XLXI_10 1936 1584 R0
        BEGIN BRANCH a(23:16)
            WIRE 1808 784 1936 784
            BEGIN DISPLAY 1808 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(23:16)
            WIRE 1824 976 1936 976
            BEGIN DISPLAY 1824 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(15:8)
            WIRE 1808 1264 1936 1264
            BEGIN DISPLAY 1808 1264 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(15:8)
            WIRE 1824 1456 1936 1456
            BEGIN DISPLAY 1824 1456 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_11 1936 2128 R0
        BEGIN BRANCH a(7:0)
            WIRE 1808 1808 1936 1808
            BEGIN DISPLAY 1808 1808 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 1808 2000 1936 2000
            BEGIN DISPLAY 1808 2000 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_35
            WIRE 2320 1904 2528 1904
        END BRANCH
        BEGIN BRANCH XLXN_36
            WIRE 2320 1360 2496 1360
        END BRANCH
        BEGIN BRANCH XLXN_37
            WIRE 2320 880 2480 880
        END BRANCH
        BEGIN BRANCH amask(2)
            WIRE 2416 944 2480 944
            BEGIN DISPLAY 2416 944 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_13 2480 1008 R0
        INSTANCE XLXI_14 2496 1488 R0
        BEGIN BRANCH amask(1)
            WIRE 2432 1424 2496 1424
            BEGIN DISPLAY 2432 1424 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_16 2528 2032 R0
        BEGIN BRANCH amask(0)
            WIRE 2448 1968 2528 1968
            BEGIN DISPLAY 2448 1968 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH match
            WIRE 3184 1456 3344 1456
        END BRANCH
        IOMARKER 3344 1456 match R0 28
        INSTANCE XLXI_17 2928 1712 R0
        BEGIN BRANCH XLXN_44
            WIRE 2736 912 2928 912
            WIRE 2928 912 2928 1264
        END BRANCH
        BEGIN BRANCH XLXN_45
            WIRE 1616 896 1664 896
            WIRE 1664 656 1664 896
            WIRE 1664 656 2384 656
            WIRE 2384 656 2384 1328
            WIRE 2384 1328 2928 1328
        END BRANCH
        BEGIN BRANCH XLXN_46
            WIRE 2752 1392 2928 1392
        END BRANCH
        BEGIN BRANCH XLXN_47
            WIRE 1616 1392 1696 1392
            WIRE 1696 1392 1696 1584
            WIRE 1696 1584 2384 1584
            WIRE 2384 1456 2384 1584
            WIRE 2384 1456 2928 1456
        END BRANCH
        BEGIN BRANCH XLXN_48
            WIRE 1632 1904 1712 1904
            WIRE 1712 1680 1712 1904
            WIRE 1712 1680 2336 1680
            WIRE 2336 1520 2336 1680
            WIRE 2336 1520 2928 1520
        END BRANCH
        BEGIN BRANCH XLXN_49
            WIRE 2784 1936 2848 1936
            WIRE 2848 1584 2848 1936
            WIRE 2848 1584 2928 1584
        END BRANCH
        BEGIN BRANCH XLXN_50
            WIRE 1696 2400 2928 2400
            WIRE 2928 1648 2928 2400
        END BRANCH
    END SHEET
END SCHEMATIC
