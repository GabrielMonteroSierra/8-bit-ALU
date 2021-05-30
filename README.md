# 8-bit-ALU
This was coded in Verilog/SystemVerilog on Fall 2020

The goal of this assignment was to create an 8-bit ALU that could take advantage of various different adders, comparators, subtractors, controllers, logic gates, etc.

In this file there is:

    Controller.sv           -Served as a central hub connecting all other modules
    Transfer.sv             -Allowed the un-altered data to pass
    AdderSubtractor.sv      -Depening on the Opcode, it would add or subtract
    Gate.sv                 -Served as a central hub for all logic gate modules
    Comparator.sv           -This module would compare two numbers and see if they were less than, equal to, or greater than
    Mux4_1.sv               -A data mux to output the correct output
    A_S_RCA8.sv             -Adder/Subtractor ripple carry adder
    Oscomb8.sv              -One's Complement
    AND8.sv                 -AND gate that uses 8 individual AND gates checking each individual bit
    NAND8.sv                -NAND gate that uses 8 individual NAND gates checking each individual bit
    OR8.sv                  -OR gate that uses 8 individual OR gates checking each individual bit
    NOR8.sv                 -NOR gate that uses 8 individual NOR gates checking each individual bit
    XOR8.sv                 -XOR gate that uses 8 individual XOR gates checking each individual bit
    XNOR8.sv                -XNOR gate that uses 8 individual XNOR gates checking each individual bit
    comp4.sv                -Compares 2 4-bit numbers using NOT, AND, NOR, OR gates
    comp8.sv                -Uses 2 4-bit comperators
    HA.sv                   -Half adder, uses XOR and AND gates
    FA.sv                   -Full adder, uses XOR AND and OR gates
