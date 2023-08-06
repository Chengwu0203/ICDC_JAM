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

reg [3:0]  seq [7:0];
reg [3:0]  cnt;
reg [2:0]  pos;
reg [3:0]  num;
reg [3:0]  com_num;
reg [2:0]  com_pos;
reg [9:0]  sum;
reg        done;

integer i;
////////////////////////////////////////
// STATE

reg [2:0] cs, ns;
parameter [2:0] IDLE        = 3'h0,
                SORT_1      = 3'h1,
                SORT_2      = 3'h2,
                SORT_3      = 3'h3,
                SORT_4      = 3'h4,
                CAL_COST    = 3'h5,
                JUDGE       = 3'h6,
                DONE        = 3'h7;
////////////////////////////////////////

always @(posedge CLK or posedge RST)begin
    if(RST)begin
        cs <= IDLE;
    end
    else begin
        cs <= ns;
    end
end

always @(*)begin
    case(cs)
        IDLE:   ns <= SORT_1;
        SORT_1: ns <= SORT_2;
        SORT_2:begin
            if(done)begin
                ns <= DONE;
            end
            else begin
                if(cnt == (pos - 4'h1))begin
                    ns <= SORT_3;
                end
                else begin
                    ns <= SORT_2;
                end
            end
        end
        SORT_3: ns <= SORT_4;
        SORT_4: ns <= CAL_COST;
        CAL_COST:begin
            if(cnt == 4'h8)begin
                ns <= JUDGE;
            end
            else begin
                ns <= CAL_COST;
            end
        end
        JUDGE: ns <= SORT_1;
        default:ns <= IDLE;
    endcase
end
////////////////////////////////////////
// CNT

always @(posedge CLK or posedge RST)begin
    if(RST)begin
        cnt <= 4'h0;
    end
    else begin
        case(cs)
            SORT_2:begin
                if(cnt == pos)begin
                    cnt <= 4'h0;
                end
                else begin
                    cnt <= cnt + 4'h1;
                end
            end
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
// SORT

always @(posedge CLK or posedge RST)begin
    if(RST)begin
        pos     <= 3'h0;
        num     <= 4'h0;
        com_pos <= 3'h0;
        com_num <= 4'h9;
        done    <= 1'h0;
        for(i=0;i<8;i=i+1)begin
            seq[i] <= 7-i;
        end
    end
    else begin
        case(cs)
            SORT_1:begin
                if(seq[0] > seq[1])begin
                    pos <= 3'd1;
                    num <= seq[1];
                end
                else if(seq[1] > seq[2])begin
                    pos <= 3'd2;
                    num <= seq[2];
                end
                else if(seq[2] > seq[3])begin
                    pos <= 3'd3;
                    num <= seq[3];
                end
                else if(seq[3] > seq[4])begin
                    pos <= 3'd4;
                    num <= seq[4];
                end
                else if(seq[4] > seq[5])begin
                    pos <= 3'd5;
                    num <= seq[5];
                end
                else if(seq[5] > seq[6])begin
                    pos <= 3'd6;
                    num <= seq[6];
                end
                else if(seq[6] > seq[7])begin
                    pos <= 3'd7;
                    num <= seq[7];
                end
                else begin
                    pos <= 5'd0;
                    num <= 4'h0;
                    done <= 1'h1;
                end
            end
            SORT_2:begin
                case(pos)
                    3'h1:begin
                        seq[0] <= seq[1];
                        seq[1] <= seq[0];
                    end
                    3'h2, 3'h3, 3'h4, 3'h5, 3'h6, 3'h7:begin
                        if(seq[cnt] > seq[pos])begin
                            if(com_num > seq[cnt])begin
                                com_num <= seq[cnt];
                                com_pos <= cnt;
                            end
                        end
                    end
                endcase
            end
            SORT_3:begin
                case(pos)
                    3'h2, 3'h3, 3'h4, 3'h5, 3'h6, 3'h7:begin
                        seq[pos]     <= seq[com_pos];
                        seq[com_pos] <= seq[pos];
                    end
                endcase
                com_pos <= 3'h0;
                com_num <= 4'h9;
            end
            SORT_4:begin
                case(pos)
                    3'h2:begin
                        seq[0] <= seq[1];
                        seq[1] <= seq[0];
                    end
                    3'h3:begin
                        seq[0] <= seq[2];
                        seq[1] <= seq[1];
                        seq[2] <= seq[0];
                    end
                    3'h4:begin
                        seq[0] <= seq[3];
                        seq[1] <= seq[2];
                        seq[2] <= seq[1];
                        seq[3] <= seq[0];
                    end
                    3'h5:begin
                        seq[0] <= seq[4];
                        seq[1] <= seq[3];
                        seq[2] <= seq[2];
                        seq[3] <= seq[1];
                        seq[4] <= seq[0];
                    end
                    3'h6:begin
                        seq[0] <= seq[5];
                        seq[1] <= seq[4];
                        seq[2] <= seq[3];
                        seq[3] <= seq[2];
                        seq[4] <= seq[1];
                        seq[5] <= seq[0];
                    end
                    3'h7:begin
                        seq[0] <= seq[6];
                        seq[1] <= seq[5];
                        seq[2] <= seq[4];
                        seq[3] <= seq[3];
                        seq[4] <= seq[2];
                        seq[5] <= seq[1];
                        seq[6] <= seq[0];
                    end
                endcase
            end
        endcase
    end
end
////////////////////////////////////////
// JAM

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
                    sum <= sum + Cost;
                end
            end
            JUDGE:begin
                if(MinCost > sum)begin
                    MinCost <= sum;
                    MatchCount <= 4'h1;
                end
                else if(MinCost == sum)begin
                    MatchCount <= MatchCount + 4'h1;
                end
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
