`include "./sort.v"
module JAM (
input CLK,
input RST,
output reg [2:0] W,
output reg [2:0] J,
input [6:0] Cost,
output reg [3:0] MatchCount,
output reg [9:0] MinCost,
output reg Valid );

////////////////////////////////////////
// REG


reg req;
reg [3:0] cnt;
reg [9:0] sum;
reg [3:0] seq [7:0];

integer i;

reg [2:0] cs, ns;
parameter [2:0] IDLE        = 3'h0,
                CAL_COST    = 3'h1,
                JUDGE       = 3'h2,
                WAIT        = 3'h3,
                DONE        = 3'h4;
////////////////////////////////////////
// WIRE

wire done;
wire busy;
wire sort_busy;
wire [31:0] sequence;
////////////////////////////////////////

assign busy = (cs == WAIT) ? 1'h1 : 1'h0;
////////////////////////////////////////
// MODULE

sort SORT0( .CLK(CLK), .RST(RST), .req(req), .sequence(sequence), .busy(sort_busy), .done(done));
////////////////////////////////////////
// STATE

always @(posedge CLK or posedge RST)begin
    if(RST)begin
        cs <= WAIT;
    end
    else begin
        cs <= ns;
    end
end

always @(*)begin
    case(cs)
        IDLE:begin
            ns <= CAL_COST;
        end
        CAL_COST:begin
            if(cnt == 4'h8)begin
                ns <= WAIT;
            end
            else begin
                ns <= CAL_COST;
            end
        end
        JUDGE:   ns <= WAIT;
        WAIT:begin
            if(done && busy)begin
                ns <= DONE;
            end
            else if(busy && sort_busy)begin
                ns <= CAL_COST;
            end
            else begin
                ns <= WAIT;
            end
        end
        DONE:    ns <= DONE;
        default: ns <= IDLE;
    endcase
end

always @(posedge CLK or posedge RST)begin
    if(RST)begin
       req <= 1'h0;
   end else begin
    case(cs)
        WAIT:begin
            req <= 1'h1;
        end
        default:begin
            req <= 1'h0;
        end
    endcase
end
end
////////////////////////////////////////
// CNT

always @(posedge CLK or posedge RST)begin
    if(RST)begin
        cnt <= 4'h0;
    end
    else begin
        case(cs)
            CAL_COST:begin
                if(cnt == 4'h8)begin
                    cnt <= 4'h0;
                end
                else begin
                    cnt <= cnt + 4'h1;
                end
            end
            default:begin
                cnt <= 4'h0;
            end
        endcase
    end
end
////////////////////////////////////////
// SEQ

always @(posedge CLK or posedge RST)begin
    if(RST)begin
        for(i=0;i<8;i=i+1)begin
            seq[i] <= 7-i;
        end
    end
    else begin
        if(cs == WAIT)begin
            seq[0] <= sequence[3:0];
            seq[1] <= sequence[7:4];
            seq[2] <= sequence[11:8];
            seq[3] <= sequence[15:12];
            seq[4] <= sequence[19:16];
            seq[5] <= sequence[23:20];
            seq[6] <= sequence[27:24];
            seq[7] <= sequence[31:28];
        end
    end
end
////////////////////////////////////////
// JAM
//

wire [9:0] sum_ = sum + Cost;

always @(posedge CLK or posedge RST)begin
    if(RST)begin
        Valid <= 1'h0;
        MatchCount <= 4'h1;
        MinCost <= 10'd1023;
        sum <= 10'h0;
    end
    else begin
        case(cs)
            CAL_COST:begin
                if((cnt >= 4'h1) && (cnt <= 4'h8))begin
                    sum <= sum_;
                end

                if(cnt == 8) begin
                    if(MinCost > sum_)begin
                        MinCost <= sum_;
                        MatchCount <= 4'h1;
                    end
                    else if(MinCost == sum_)begin
                        MatchCount <= MatchCount + 4'h1;
                    end
                end
            end
            JUDGE:begin
                // if(MinCost > sum)begin
                //     MinCost <= sum;
                //     MatchCount <= 4'h1;
                // end
                // else if(MinCost == sum)begin
                //     MatchCount <= MatchCount + 4'h1;
                // end
            end
            DONE:begin
                Valid <= 1'h1;
            end
            default:    sum <= 10'h0;
        endcase
    end
end

always @(*)begin
    if(cs == CAL_COST)begin
        if(cnt <= 4'h7)begin
            W <= cnt;
            J <= seq[cnt];
        end
        else begin
            W <= W;
            J <= J;
        end
    end
    else begin
        W <= 3'h0;
        J <= 3'h0;
    end
end
////////////////////////////////////////

endmodule
