//positive_edge_circuit

module edge_crkt( in_signal, clk, out_signal);
input in_signal, clk;
output out_signal;

reg signal_delay;

always@(posedge clk)
begin
signal_delay <= in_signal;       
end

assign out_signal= in_signal & ~signal_delay; 
endmodule
