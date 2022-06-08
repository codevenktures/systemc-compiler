//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.29
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B_top ()
//
module B_top // "b_mod"
(
);

// Variables generated for SystemC signals
logic [10:0] a;
logic [64:0] b;


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(
  .a(a),
  .b(b)
);

endmodule



//==============================================================================
//
// Module: A (test_sc_bv.cpp:170:5)
//
module A // "b_mod.a_mod"
(
    input logic [10:0] a,
    output logic [64:0] b
);

// Variables generated for SystemC signals
logic [10:0] c;
logic [10:0] dr;
logic [10:0] dw;
logic [15:0] s;
logic [41:0] us;
logic [41:0] bus;
logic signed [41:0] is;
logic signed [41:0] bis;
logic [10:0] v[3];

// Local parameters generated for C++ constants
localparam logic [10:0] J = 42;
localparam logic [10:0] CJ = 42;

//------------------------------------------------------------------------------
// Method process: cast (test_sc_bv.cpp:46:5) 

always_comb 
begin : cast     // test_sc_bv.cpp:46:5
    logic [10:0] i;
    logic [15:0] j;
    logic [41:0] bu;
    i = 0;
    j = 0;
    bu = 0;
    bu = bus;
    i = a;
    c = a;
    c = a;
    c = J;
    c = CJ;
    c = CJ;
    j = s;
    s = j;
    s = j;
    v[0] = i;
    i = v[1];
    c = v[32'(i)];
    j = s;
    s = j;
    i = dr;
    dw = i;
end

//------------------------------------------------------------------------------
// Method process: ctors (test_sc_bv.cpp:76:5) 

always_comb 
begin : ctors     // test_sc_bv.cpp:76:5
    integer l;
    logic [10:0] i;
    logic [10:0] j;
    logic [11:0] k;
    logic [12:0] n;
    logic [12:0] m;
    logic [13:0] p1;
    logic [14:0] p2;
    logic [15:0] p3;
    logic [16:0] p4;
    logic [69:0] ll;
    logic [69:0] q1;
    logic [69:0] q2;
    l = 42;
    i = 0;
    i = a;
    j = a;
    k = 1;
    n = 42;
    m = l;
    p1 = us;
    p2 = bus;
    p3 = is;
    p4 = bis;
    ll = 0;
    q1 = ll;
    q2 = signed'({1'b0, ll}) + 1;
    i = J;
    i = CJ;
    i = j;
    i = us;
    i = bus;
    i = is;
    i = bis;
    n = m;
    b = a;
    s = b;
end

//------------------------------------------------------------------------------
// Method process: opers (test_sc_bv.cpp:107:5) 

always_comb 
begin : opers     // test_sc_bv.cpp:107:5
    logic lb;
    integer il;
    logic [7:0] ul;
    logic signed [7:0] bl;
    logic [10:0] i;
    logic [19:0] j;
    logic [23:0] k;
    il = 32'(s);
    ul = 0;
    bl = 0;
    i = 0;
    j = 0;
    k = 0;
    i[0] = 1;
    i[il] = 1;
    i[3 : 1] = 5;
    lb = i[1];
    il = 32'(i[10 : 3]);
    i = i[10 : 0];
    i = s[11 : 1];
    il = 32'(a);
    il = 64'(b);
    lb = 1;
    il = 11;
    il = 8;
    il = 8;
    i = i & s;
    j = 1 | k;
    k = (i & j) ^ s;
    k = ~i | ~a;
    j = j | k;
    i = i ^ b;
    i = i <<< 4;
    j = i >>> il;
    k = k >>> 0;
    k = k <<< 32'(a);
end

//------------------------------------------------------------------------------
// Method process: reduces (test_sc_bv.cpp:150:5) 

always_comb 
begin : reduces     // test_sc_bv.cpp:150:5
    logic lb;
    logic [10:0] i;
    i = 0;
    lb = &i;
    lb = |i;
    lb = ~^s;
    if (~|a)
    begin
        lb = ~&a;
    end
end

endmodule


