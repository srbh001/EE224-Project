-- Final Integration in CPU
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.GATES.all;


entity CPU is 
    port (
        clk : in std_logic;
        reset : in std_logic;
        OUTP : out std_logic_vector(15 downto 0);
    )
end entity CPU;


architecture struct of CPU is

    component ALU_unit is 
	port (A,B : in std_logic_vector(15 downto 0 );
			p,q,r : in std_logic;
			C : out std_logic_vector(15 downto 0);
			carry_flag : out std_logic;
			zero_flag : out std_logic);
    end component ALU_unit ;


    component Reg_File is
        port(
            clk : in std_logic;
            Writeff : in std_logic; -- Flag to write - should be 1 if writing
            readReg1 : in std_logic_vector(2 downto 0); -- A1
            readReg2 : in std_logic_vector(2 downto 0); -- A2
            writeReg : in std_logic_vector(2 downto 0); -- A3
            writeData : in std_logic_vector(15 downto 0); -- D3
            readData1 : out std_logic_vector(15 downto 0); -- D1
            readData2 : out std_logic_vector(15 downto 0) -- D2
        );
    end component  Reg_File;

    component Memory is 
	port (address, Mem_datain: in std_logic_vector(15 downto 0);
	      clk, write_signal: in std_logic;
	      Mem_dataout: out std_logic_vector(15 downto 0));
    end component Memory;


    component Register_16b is
    port(Clk, Reset, writef : in std_logic;
    data_in : in std_logic_vector(15 downto 0);
    data_out : out std_logic_vector(15 downto 0));
    end component Register_16b;

   
    component SE_6to16 is
        port (A : in std_logic_vector(5 downto 0); Y : out std_logic_vector(15 downto 0));
    end component SE_6to16 ;

    component SE_9to16 is
        port (A : in std_logic_vector(8 downto 0); Y : out std_logic_vector(15 downto 0));
    end component SE_9to16 ;

   

    --- REGISTER FILE SIGNALS ---
    signal RF_A1, RF_A2, RF_A3 : std_logic_vector(2 downto 0) := (Others =>'0');
    signal RF_D1, RF_D2, RF_D3: std_logic_vector(15 downto 0):= (Others =>'0');
    signal RF_WriteFlag : std_logic;

    --- ALU SIGNALS --
    signal A, B, C : std_logic_vector(15 downto 0):= (Others =>'0');
    signal PQR : std_logic_vector(2 downto 0):= (Others =>'0');
    signal carry_flag, zero_flag : std_logic;

    --- MEMORY SIGNALS ---
    signal MEM_ADD, MEM_DATA_OUT, MEM_DATA_OUT : std_logic_vector(15 downto 0):= (Others =>'0');
    signal MEM_WRITE : std_logic;

    --- REGISTER SIGNALS ---
    signal T1_IN, T1_OUT, T2_IN, T2_OUT, T3_IN, T3_OUT : std_logic_vector(15 downto 0):= (Others =>'0');
    signal T1_WRITE, T2_WRITE, T3_WRITE : std_logic;

    --- CONTROL SIGNALS ---
    type state_type is (S1, S2, S3, S4, S7, S8, S9, S13, S16, S17, S20, S3_JLR, S3_LHI, S3_LLI, S4_ADI, S4_LLI):= (Others =>'0');
    signal state  : state_type := S1;

    -- SIGNALS FOR INSTRUCTION DECODING --
    signal IP : std_logic_vector(15 downto 0):= (Others =>'0');
    signal IR : std_logic_vector(15 downto 0):= (Others =>'0');

     -- SIGN EXTENDERS --
     signal SGN9_IN: std_logic_vector(8 downto 0);
     signal SGN6_IN: std_logic_vector(5 downto 0);
     signal SGN9_OUT, SGN6_OUT : std_logic_vector(15 downto 0);
    


begin

    -- ALU UNIT --
    ALU_INS : ALU_unit port map (A => A, B => B, p => PQR(0), q => PQR(1), r => PQR(2), C => C, carry_flag => carry_flag, zero_flag => zero_flag);
   
    -- REGISTER FILE --
    RF_INS : Reg_File port map (clk => clk, Writeff => RF_WriteFlag, readReg1 => RF_A1, readReg2 => RF_A2, writeReg => RF_A3, writeData => RF_D3, readData1 => RF_D1, readData2 => RF_D2);
    
    -- MEMORY --
    MEM_INS : Memory port map (address => MEM_ADD, Mem_datain => MEM_DATA_IN, clk => clk, write_signal => MEM_WRITE, Mem_dataout => MEM_DATA_OUT);
    
    -- REGISTERS --
    T1_INS : Register_16b port map (Clk => clk, Reset => reset, writef => T1_WRITE, data_in => T1_IN, data_out => T1_OUT);
    T2_INS : Register_16b port map (Clk => clk, Reset => reset, writef => T2_WRITE, data_in => T2_IN, data_out => T2_OUT);
    T3_INS : Register_16b port map (Clk => clk, Reset => reset, writef => T3_WRITE, data_in => T3_IN, data_out => T3_OUT);

    -- SIGN EXTENDERS --
    SGN9TO16 :  SE_9to16 port map(A=> SGN9_IN, Y=> SGN9_OUT);
    SGN6TO16 : SE_6to16 port map (A=> SGN6_IN, Y=> SGN6_OUT);

    state_clk_proc: PROCESS(clk, reset, state)
    begin
        if reset = '1' then
            state <= S1;
        elsif rising_edge(clk) then
            case state is
                when S1 =>
                    RF_A1 <= "111";
                    IP <= RF_D1;
                    MEM_ADD <= IP;
                    IR <= MEM_DATA_OUT;

                    A <= IP;
                    if ((IR(15 downto 11) = "1111") or (IR(15 downto 0) = "1101") ) then
                        B <= "0000000000000000"
                    else
                        B <= "0000000000000010";
                    end if;

                    PQR <= "000"
                    IP <= C;

                    state <= S2;

                --- LAYER TWO STATES --
                when S2 =>
                    RF_A1 <= IR(11 downto 9);
                    RF_A2 <= IR(8 downto 6);
                    T1_IN <= RF_D1;
                    T2_IN <= RF_D2;

                    -- state <= S2;
                    if ((IR(15 downto 12) = "0000") or 
                        (IR(15 downto 12) = "0010") or
                        (IR(15 downto 12) = "0011") or 
                        (IR(15 downto 12) = "0100") or 
                        (IR(15 downto 12) = "0110") or
                        (IR(15 downto 12) = "0101") or 
                        ) 
                        then
                                state <= S3;
                    else if ((IR(15 downto 12) = "1010") or  (IR(15 downto 12) = "1011")) then
                        state <= S7;
                    
                    else if  (IR(15 downto 12) = "1000") then
                        state <= S3_LHI;

                    else if  (IR(15 downto 12) = "1001") then
                        state <= S3_LLI;
                    else if  (IR(15 downto 12) = "1111") then
                        state <= S3_JLR;
                    
                    else if  (IR(15 downto 12) = "1100") then 
                        state <= S16;

                    else if  (IR(15 downto 12) = "1101") then
                        state <= S20;

                    else:
                        state <= S1;
                    end if;

                -- LAYER THREE STATES --
                when S3=> -- EXECUTION
                    A<= T1_OUT;
                    B <= T2_OUT;
                    PQR <= IR(14 downto 12); -- TODO: CHANGE ALU ACCORDINGLY
                    T3_IN <= C;
                    state <= S4;
                
                
                when S7=>
                    A <= T1_OUT;
                    SGN6_IN <= IR(5 downto 0);
                    B <= SGN6_OUT;
                    PQR <= "000";
                    T3_IN<= C;

                    case IR(15 downto 12) is 
                        when "1010" =>
                            state <= S8;
                        when "1011"=>
                            state <= S13;
                        when "0001"=>
                            state <= S4_ADI;
                        when others =>
                            state => S1; -- FATAL: GOING BACK TO ONE IN CASE OF ERROR
                    end case;

                when S3_LHI =>
                        T3_IN <= IR(7 downto 0) & "00000000";
                        state <= S4_LLI;
                
                when S3_LLI =>
                    T3_IN <= "00000000" & IR(7 downto 0);
                    state <= S4_LLI;
                
                when S16 =>
                    A <= T1_OUT;
                    B <= T2_OUT;
                    PQR <= "001"; -- #TODO MAY NEED TO CHANGE THIS AS WELL
                    -- ZERO_FLAG (Z) : IS IDEALLY WRITTEN AUTOMATICALY

                when S20 =>
                    -- TODO 
                        state<= S1;
                
                when S3_JLR =>
                    RF_A3 <= IR (11 downto 9);
                    RF_D3 <= IP;
                    IP <= T2_OUT;
                    state <= 1;
                
        
                
            -- LAYER FOUR STATES -- 

                when S4=> -- FINAL STATE FOR R TYPE INSTRUCTIONS
                    RF_D3 <= T3_OUT;
                    RF_A3 <= IR(5 downto 3);
                    state<= S1;
                
                when S4_LLI =>
                    RF_D3 <= T3_OUT;
                    RF_A3 <= IR (11 downto 9);
                    
                    state <= S1;
                
                when S17=>
                        A <= IP;
                        SGN6_IN <= IR(5 downto 0);
                        B<= SGN6_OUT;
                        if (zero_flag =1) then
                                IP <= C;
                        end if;
                        
                        state <= S1;

                when S8 =>
                    MEM_ADD <= T3_OUT;
                    T3_IN <= MEM_OUT;
                    state <= S9;
                
                when S13 =>
                    MEM_ADD <= T3_OUT;
                    MEM_DATA <= T2_OUT;
                    state <= S1;
                
                
                
                ---- LAYER 5 ---

                when S9 =>
                    RF_D3 <= T3_OUT;
                    RF_A3 <= IR( 8 downto 6);
                    state <= S1;
                
                

                
                
                


                
                -- TODO: ADD S4_ADI and RESOLVE FOR S20.

                
                
                        





    end PROCESS;



end architecture struct;











