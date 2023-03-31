//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.8
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "a_mod"
(
    input logic clk,
    input logic in_a,
    input logic signed [31:0] in_b,
    output logic out_a,
    output logic signed [31:0] out_b
);

// Variables generated for SystemC signals
logic nrst;
logic [31:0] s;
logic sim_a;
logic signed [31:0] sim_b;
logic rim_a;
logic signed [31:0] rim_b;
logic tim_a;
logic signed [31:0] tim_b;
logic vim_a;
logic signed [31:0] vim_b;
logic wim_a;
logic signed [31:0] wim_b;
logic svec_a[2];
logic signed [31:0] svec_b[2];
logic rvec_a[2];
logic signed [31:0] rvec_b[2];
logic rrvec_a[2][3];
logic signed [31:0] rrvec_b[2][3];
logic tvec_a[2];
logic signed [31:0] tvec_b[2];
logic [11:0] cim;
logic csim_a;
logic signed [31:0] csim_b;
logic ctim_a;
logic signed [31:0] ctim_b;
logic crim_a;
logic signed [31:0] crim_b;

//------------------------------------------------------------------------------
// Clocked THREAD: resetRecord (test_chan_type_thrd.cpp:116:5) 

// Thread-local variables
logic ss_a;
logic ss_a_next;
logic signed [31:0] ss_b;
logic signed [31:0] ss_b_next;
logic rim_a_next;
logic signed [31:0] rim_b_next;

// Next-state combinational logic
always_comb begin : resetRecord_comb     // test_chan_type_thrd.cpp:116:5
    resetRecord_func;
end
function void resetRecord_func;
    rim_a_next = rim_a;
    rim_b_next = rim_b;
    ss_a_next = ss_a;
    ss_b_next = ss_b;
    rim_a_next = ss_a_next; rim_b_next = ss_b_next;
    ss_a_next = rim_a; ss_b_next = rim_b;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : resetRecord_ff
    if ( ~nrst ) begin
        ss_b <= 'h42;
    end
    else begin
        ss_a <= ss_a_next;
        ss_b <= ss_b_next;
        rim_a <= rim_a_next;
        rim_b <= rim_b_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: bodyRecord (test_chan_type_thrd.cpp:128:5) 

// Thread-local variables
logic rr_a;
logic rr_a_next;
logic signed [31:0] rr_b;
logic signed [31:0] rr_b_next;
logic tim_a_next;
logic signed [31:0] tim_b_next;
logic bodyRecord_PROC_STATE;
logic bodyRecord_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : bodyRecord_comb     // test_chan_type_thrd.cpp:128:5
    bodyRecord_func;
end
function void bodyRecord_func;
    logic ss_a_1;
    integer ss_b_1;
    rr_a_next = rr_a;
    rr_b_next = rr_b;
    tim_a_next = tim_a;
    tim_b_next = tim_b;
    bodyRecord_PROC_STATE_next = bodyRecord_PROC_STATE;
    
    case (bodyRecord_PROC_STATE)
        0: begin
            ss_b_1 = 'h42;
            rr_b_next = 'h42;
            tim_a_next = ss_a_1; tim_b_next = ss_b_1;
            ss_a_1 = tim_a; ss_b_1 = tim_b;
            bodyRecord_PROC_STATE_next = 1; return;    // test_chan_type_thrd.cpp:136:13;
        end
        1: begin
            tim_a_next = rr_a_next; tim_b_next = rr_b_next;
            ss_b_1 = 'h42;
            rr_b_next = 'h42;
            tim_a_next = ss_a_1; tim_b_next = ss_b_1;
            ss_a_1 = tim_a; ss_b_1 = tim_b;
            bodyRecord_PROC_STATE_next = 1; return;    // test_chan_type_thrd.cpp:136:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : bodyRecord_ff
    if ( ~nrst ) begin
        bodyRecord_PROC_STATE <= 0;    // test_chan_type_thrd.cpp:129:9;
    end
    else begin
        rr_a <= rr_a_next;
        rr_b <= rr_b_next;
        tim_a <= tim_a_next;
        tim_b <= tim_b_next;
        bodyRecord_PROC_STATE <= bodyRecord_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: threadSignal (test_chan_type_thrd.cpp:141:5) 

// Thread-local variables
logic sim_a_next;
logic signed [31:0] sim_b_next;
logic ss_a0;
logic ss_a_next0;
logic signed [31:0] ss_b0;
logic signed [31:0] ss_b_next0;

// Next-state combinational logic
always_comb begin : threadSignal_comb     // test_chan_type_thrd.cpp:141:5
    threadSignal_func;
end
function void threadSignal_func;
    logic rr_a_1;
    integer rr_b_1;
    sim_a_next = sim_a;
    sim_b_next = sim_b;
    ss_a_next0 = ss_a0;
    ss_b_next0 = ss_b0;
    rr_b_1 = 'h42;
    rr_a_1 = 1;
    rr_b_1 = 2;
    sim_a_next = ss_a_next0; sim_b_next = ss_b_next0;
    sim_a_next = rr_a_1; sim_b_next = rr_b_1;
    sim_a_next = ss_a_next0; sim_b_next = ss_b_next0;
    sim_a_next = rim_a; sim_b_next = rim_b;
    sim_a_next = rim_a; sim_b_next = rim_b;
    sim_a_next = rim_a; sim_b_next = rim_b;
    sim_a_next = rim_a; sim_b_next = rim_b;
    sim_a_next = tim_a; sim_b_next = tim_b;
    sim_a_next = tim_a; sim_b_next = tim_b;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : threadSignal_ff
    if ( ~nrst ) begin
        ss_b0 <= 'h42;
        sim_a <= ss_a0; sim_b <= ss_b0;
    end
    else begin
        sim_a <= sim_a_next;
        sim_b <= sim_b_next;
        ss_a0 <= ss_a_next0;
        ss_b0 <= ss_b_next0;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: threadCombSignal (test_chan_type_thrd.cpp:171:5) 

// Thread-local variables
logic crim_a_next;
logic signed [31:0] crim_b_next;

// Next-state combinational logic
always_comb begin : threadCombSignal_comb     // test_chan_type_thrd.cpp:171:5
    threadCombSignal_func;
end
function void threadCombSignal_func;
    logic ss_a_1;
    integer ss_b_1;
    logic rr_a_1;
    integer rr_b_1;
    logic [11:0] i;
    cim = '0;
    crim_a = crim_a_next;
    crim_b = crim_b_next;
    csim_a = '0;
    csim_b = '0;
    ctim_a = '0;
    ctim_b = '0;
    rr_b_1 = 'h42;
    rr_a_1 = 1;
    rr_b_1 = 2;
    i = cim;
    ss_a_1 = csim_a; ss_b_1 = csim_b;
    ss_a_1 = ctim_a; ss_b_1 = ctim_b;
    ss_a_1 = crim_a; ss_b_1 = crim_b;
    csim_a = ss_a_1; csim_b = ss_b_1;
    csim_a = rr_a_1; csim_b = rr_b_1;
    rr_a_1 = csim_a; rr_b_1 = csim_b;
    csim_a = crim_a; csim_b = crim_b;
    ss_a_1 = crim_a; ss_b_1 = crim_b;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : threadCombSignal_ff
    if ( ~nrst ) begin
        logic ss_a_1;
        integer ss_b_1;
        ss_b_1 = 'h42;
        crim_a_next = ss_a_1; crim_b_next = ss_b_1;
    end
    else begin
        crim_a_next <= crim_a;
        crim_b_next <= crim_b;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: threadPort (test_chan_type_thrd.cpp:199:5) 

// Thread-local variables
logic out_a_next;
logic signed [31:0] out_b_next;

// Next-state combinational logic
always_comb begin : threadPort_comb     // test_chan_type_thrd.cpp:199:5
    threadPort_func;
end
function void threadPort_func;
    logic ss_a_1;
    integer ss_b_1;
    out_a_next = out_a;
    out_b_next = out_b;
    ss_a_1 = in_a; ss_b_1 = in_b;
    ss_a_1 = in_a; ss_b_1 = in_b;
    out_a_next = in_a; out_b_next = in_b;
    out_a_next = ss_a_1; out_b_next = ss_b_1;
    out_a_next = ss_a_1; out_b_next = ss_b_1;
    ss_a_1 = out_a; ss_b_1 = out_b;
    out_a_next = rim_a; out_b_next = rim_b;
    out_a_next = rim_a; out_b_next = rim_b;
    out_a_next = rim_a; out_b_next = rim_b;
    out_a_next = rim_a; out_b_next = rim_b;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : threadPort_ff
    if ( ~nrst ) begin
        logic ss_a_1;
        integer ss_b_1;
        ss_b_1 = 'h42;
        out_a <= ss_a_1; out_b <= ss_b_1;
        out_a <= ss_a_1; out_b <= ss_b_1;
    end
    else begin
        out_a <= out_a_next;
        out_b <= out_b_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: threadArr (test_chan_type_thrd.cpp:224:5) 

// Thread-local variables
logic ss_a1;
logic ss_a_next1;
logic signed [31:0] ss_b1;
logic signed [31:0] ss_b_next1;
logic rr_a0[2];
logic rr_a_next0[2];
logic signed [31:0] rr_b0[2];
logic signed [31:0] rr_b_next0[2];
logic tt_a[2];
logic tt_a_next[2];
logic signed [31:0] tt_b[2];
logic signed [31:0] tt_b_next[2];
logic rrvec_a_next[2][3];
logic signed [31:0] rrvec_b_next[2][3];
logic rvec_a_next[2];
logic signed [31:0] rvec_b_next[2];
logic vim_a_next;
logic signed [31:0] vim_b_next;

// Next-state combinational logic
always_comb begin : threadArr_comb     // test_chan_type_thrd.cpp:224:5
    threadArr_func;
end
function void threadArr_func;
    integer unsigned i;
    integer unsigned j;
    rr_a_next0 = rr_a0;
    rr_b_next0 = rr_b0;
    rrvec_a_next = rrvec_a;
    rrvec_b_next = rrvec_b;
    rvec_a_next = rvec_a;
    rvec_b_next = rvec_b;
    ss_a_next1 = ss_a1;
    ss_b_next1 = ss_b1;
    tt_a_next = tt_a;
    tt_b_next = tt_b;
    vim_a_next = vim_a;
    vim_b_next = vim_b;
    i = s;
    j = s;
    rr_a_next0[1] = 1;
    rr_b_next0[1] = 2;
    rrvec_a_next[0][1] = ss_a_next1; rrvec_b_next[0][1] = ss_b_next1;
    rvec_a_next[0] = ss_a_next1; rvec_b_next[0] = ss_b_next1;
    vim_a_next = ss_a_next1; vim_b_next = ss_b_next1;
    ss_a_next1 = rr_a_next0[1]; ss_b_next1 = rr_b_next0[1];
    ss_a_next1 = svec_a[j]; ss_b_next1 = svec_b[j];
    tt_a_next[i] = svec_a[j]; tt_b_next[i] = svec_b[j];
    rvec_a_next[i] = rr_a_next0[j]; rvec_b_next[i] = rr_b_next0[j];
    rvec_a_next[i] = tt_a_next[j]; rvec_b_next[i] = tt_b_next[j];
    rr_a_next0[i] = svec_a[j]; rr_b_next0[i] = svec_b[j];
    rr_a_next0[i] = svec_a[j]; rr_b_next0[i] = svec_b[j];
    rvec_a_next[i] = svec_a[j]; rvec_b_next[i] = svec_b[j];
    rvec_a_next[i] = svec_a[j]; rvec_b_next[i] = svec_b[j];
    rvec_a_next[i] = svec_a[j]; rvec_b_next[i] = svec_b[j];
    rvec_a_next[i] = svec_a[j]; rvec_b_next[i] = svec_b[j];
    rrvec_a_next[i][j] = svec_a[j]; rrvec_b_next[i][j] = svec_b[j];
    ss_a_next1 = rvec_a[i]; ss_b_next1 = rvec_b[i];
    ss_a_next1 = rrvec_a[i][j]; ss_b_next1 = rrvec_b[i][j];
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : threadArr_ff
    if ( ~nrst ) begin
        ss_b1 <= 'h42;
        tt_a[1] <= 1;
        tt_b[1] <= 2;
    end
    else begin
        ss_a1 <= ss_a_next1;
        ss_b1 <= ss_b_next1;
        rr_a0 <= rr_a_next0;
        rr_b0 <= rr_b_next0;
        tt_a <= tt_a_next;
        tt_b <= tt_b_next;
        rrvec_a <= rrvec_a_next;
        rrvec_b <= rrvec_b_next;
        rvec_a <= rvec_a_next;
        rvec_b <= rvec_b_next;
        vim_a <= vim_a_next;
        vim_b <= vim_b_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: threadCtor (test_chan_type_thrd.cpp:258:5) 

// Thread-local variables
logic tvec_a_next[2];
logic signed [31:0] tvec_b_next[2];
logic ss_a2;
logic ss_a_next2;
logic signed [31:0] ss_b2;
logic signed [31:0] ss_b_next2;
logic wim_a_next;
logic signed [31:0] wim_b_next;

// Next-state combinational logic
always_comb begin : threadCtor_comb     // test_chan_type_thrd.cpp:258:5
    threadCtor_func;
end
function void threadCtor_func;
    integer unsigned i;
    logic tt_a_1;
    integer tt_b_1;
    ss_a_next2 = ss_a2;
    ss_b_next2 = ss_b2;
    tvec_a_next = tvec_a;
    tvec_b_next = tvec_b;
    wim_a_next = wim_a;
    wim_b_next = wim_b;
    i = s;
    wim_a_next = 0; wim_b_next = 'h42;
    wim_a_next = 0; wim_b_next = 'h42;
    wim_a_next = 0; wim_b_next = 'h42;
    wim_a_next = 0; wim_b_next = 'h42;
    tvec_a_next[i] = 0; tvec_b_next[i] = 'h42;
    tvec_a_next[i + 1] = 0; tvec_b_next[i + 1] = 'h42;
    tt_a_1 = ss_a_next2; tt_b_1 = ss_b_next2;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : threadCtor_ff
    if ( ~nrst ) begin
        ss_b2 <= 'h42;
        tvec_a[0] <= 0; tvec_b[0] <= 'h42;
    end
    else begin
        tvec_a <= tvec_a_next;
        tvec_b <= tvec_b_next;
        ss_a2 <= ss_a_next2;
        ss_b2 <= ss_b_next2;
        wim_a <= wim_a_next;
        wim_b <= wim_b_next;
    end
end

endmodule


