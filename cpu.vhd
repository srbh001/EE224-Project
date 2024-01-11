-- Final CPU
-- each state of FSM contain dataflow and control signals
 
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity CPU is 
    port (
        clk : in std_logic;
        reset : in std_logic;
		  finalout : out std_logic_vector(7 downto 0);
		  input : in std_logic_vector(7 downto 0)
		  
    );
	 
end entity CPU;

architecture struct of CPU is

    component ALU_unit is 
		  port (A,B : in std_logic_vector(15 downto 0 );
				  p,q,r : in std_logic;
			     C : out std_logic_vector(15 downto 0);
			     carry_flag : out std_logic;
			     zero_flag : out std_logic);
    end component ALU_unit ;


	component Reg_file is
	  port (A1: in std_logic_vector(2 downto 0);
			  A2: in std_logic_vector(2 downto 0);
			  A3: in std_logic_vector(2 downto 0);
			  D1: out std_logic_vector(15 downto 0);
			  D2: out std_logic_vector(15 downto 0);
			  D3: in std_logic_vector(15 downto 0);
			  Dip : in std_logic_vector(15 downto 0);
			  Dip_out : out std_logic_vector(15 downto 0);
			  Asel : in std_logic_vector(2 downto 0);
			  Dout : out std_logic_vector(7 downto 0);
			  clk: in std_logic;
			  select_sb : in std_logic;
		     write_en : in std_logic);
	end component Reg_file;


    component Memory is 
	   	port (address, Mem_datain: in std_logic_vector(15 downto 0);
	            clk, write_signal: in std_logic;
	            Mem_dataout: out std_logic_vector(15 downto 0);
					sel_in : in std_logic_vector(5 downto 0);
			      memory_out : out std_logic_vector(7 downto 0);
			      select_sb  : in std_logic
					);
					
    end component Memory;

	 component register_16b is
		   port (input:in std_logic_vector(15 downto 0);
			w_enable, clk: in std_logic;
			output: out std_logic_vector(15 downto 0));
	 end component register_16b;


   
    component SE_6to16 is
        port (A : in std_logic_vector(5 downto 0); Y : out std_logic_vector(15 downto 0));
    end component SE_6to16 ;

    component SE_9to16 is
        port (A : in std_logic_vector(8 downto 0); Y : out std_logic_vector(15 downto 0));
    end component SE_9to16 ;

	 
	 component left_shift9bit is
		port (A : in std_logic_vector(8 downto 0); Y : out std_logic_vector(8 downto 0));
	 end component left_shift9bit ;
	 
	 
	component left_shift6bit is
		port (A : in std_logic_vector(5 downto 0); Y : out std_logic_vector(5 downto 0));
	end component left_shift6bit ;
	
	component register1bit is
      port (input:in std_logic;
		   	w_enable, clk: in std_logic;
			   output: out std_logic);
   end component register1bit;  

   

    --- REGISTER FILE SIGNALS ---
    signal RF_A1, RF_A2, RF_A3 : std_logic_vector(2 downto 0) := (Others =>'0');
    signal RF_D1, RF_D2, RF_D3: std_logic_vector(15 downto 0):= (Others =>'0');
    signal RF_Write : std_logic;

    --- ALU SIGNALS --
    signal aluA, aluB, aluC : std_logic_vector(15 downto 0):= (Others =>'0');
    signal PQR : std_logic_vector(2 downto 0):= (Others =>'0');
    signal carry_flag, zero_flag : std_logic;

    --- MEMORY SIGNALS ---
    signal MEM_ADD, MEM_DATA_OUT,MEM_DATA_IN: std_logic_vector(15 downto 0):= (Others =>'0');
    signal MEM_WRITE : std_logic;

    --- REGISTER SIGNALS ---
    signal T1_IN, T1_OUT, T2_IN, T2_OUT, T3_IN, T3_OUT : std_logic_vector(15 downto 0):= (Others =>'0');
    signal T1_WRITE, T2_WRITE, T3_WRITE, zeroflag_reg_write : std_logic;
	 signal zeroflag_in,zeroflag_out : std_logic :='0';
	 

    --- CONTROL SIGNALS ---
    type state_type is (S1, S2, S3, S4, S7, S8, S9, S13, S16, S17,S3_JLR,S3JAL, S3_LHI, S3_LLI, S4_ADI, S4_LI);
    signal y_next  : state_type := S1;
	 signal y_present  : state_type;
	 
    signal IP_update, IP : std_logic_vector(15 downto 0);
 
    signal IR_IN, IR_OUT : std_logic_vector(15 downto 0);
	 
	 signal IR_WRITE : std_logic ;

     -- SIGN EXTENDERS --
    signal SGN9_IN: std_logic_vector(8 downto 0);
	 signal SGN10_IN: std_logic_vector(9 downto 0);
    signal SGN6_IN: std_logic_vector(5 downto 0);
    signal SGN9_OUT, SGN6_OUT : std_logic_vector(15 downto 0);
	 signal left_shiftin : std_logic_vector(8 downto 0);
	 signal left_shiftout :std_logic_vector(8 downto 0);
	 signal left_shiftin6bit : std_logic_vector(5 downto 0);
	 signal left_shiftout6bit :std_logic_vector(5 downto 0);
	 
	 signal opt : std_logic:='0';
	 
	 signal RF_output : std_logic_vector(7 downto 0);
	 signal memory_output : std_logic_vector(7 downto 0);
	 signal zeroflag_temp : std_logic_vector(7 downto 0) ;
	 signal carryflag_temp : std_logic_vector(7 downto 0) ;
	 
	 
	 
	  

begin

    -- ALU UNIT --
    ALU_INS : ALU_unit port map (A => aluA, B => aluB, p => PQR(2), q => PQR(1), r => PQR(0), C => aluC, carry_flag => carry_flag, zero_flag => zero_flag);
   
    -- REGISTER FILE --
    RF_INS : Reg_file port map (A1 => RF_A1, A2 => RF_A2, A3 => RF_A3,Asel=>input(7 downto 5),select_sb => input(1),D1 => RF_D1, D2 => RF_D2,D3=>RF_D3,Dip=>IP_update,Dip_out=>IP,Dout=>RF_output,clk=>clk,write_en=>RF_Write);
    
    -- MEMORY --
    MEM_INS : Memory port map (address => MEM_ADD, Mem_datain => MEM_DATA_IN, sel_in => input(7 downto 2),select_sb=>input(1), memory_out=> memory_output,clk => clk, write_signal => MEM_WRITE, Mem_dataout => MEM_DATA_OUT);
    
    -- REGISTERS --
    T1_INS : register_16b port map (input => T1_IN,w_enable=>T1_Write,clk=>clk,output => T1_OUT );
    T2_INS : register_16b port map (input => T2_IN,w_enable=>T2_Write,clk=>clk,output => T2_OUT );
    T3_INS : register_16b port map (input => T3_IN,w_enable=>T3_Write,clk=>clk,output => T3_OUT );
	 
    IR_INS : register_16b port map (input => IR_IN,w_enable=>IR_Write,clk=>clk,output => IR_OUT );
	 
	 zero_flag_register : register1bit port map(input=>zeroflag_in,w_enable=>zeroflag_reg_write,clk=>clk,output=>zeroflag_out);
    -- SIGN EXTENDERS --
    SGN9TO16  :  SE_9to16 port map(A=> SGN9_IN, Y=> SGN9_OUT);
    SGN6TO16  : SE_6to16 port map (A=> SGN6_IN, Y=> SGN6_OUT);

	 left_shiftby1 : left_shift9bit port map (A=> left_shiftin, Y=> left_shiftout);
	 left_shift6bitby1 : left_shift6bit port map (A=> left_shiftin6bit, Y=> left_shiftout6bit);

    
	 zeroflag_temp <= "0000000" & zero_flag ;
	 carryflag_temp <= "0000000" & carry_flag ;
	 
	 output_process : process(input,reset)
	   begin
		
		if(input(0) = '1') then
			finalout <= memory_output;
		else
			if(input(4) = '1') then
				finalout <= zeroflag_temp;
			elsif (input(5) = '1') then
				finalout <= carryflag_temp;
			else 
				finalout <= rf_output;
			end if;
		end if;
	 end process;	
	 
	 clock_proc:process(clk,reset)
		begin

		if(clk='1' and clk' event) then
			if(reset='1') then
				y_present<= S1;
			else
				y_present<=y_next;
			end if;
		end if;
		end process;
	 
		
    state_transition_proc: process(y_present,IR_IN,zeroflag_out,RF_D1,RF_D2,IR_OUT,T1_OUT,T2_OUT,T3_OUT,aluC,SGN9_OUT,SGN6_OUT,left_shiftout,left_shiftout6bit,zero_flag,MEM_DATA_OUT)
    begin
	 -- To avoid inferred latches for signals
	      aluA<=(others=>'0');
			aluB<=(others=>'0');
			PQR<=(others=>'0');
			T1_IN<=(others=>'0');
			T2_IN<=(others=>'0');
			T3_IN<=(others=>'0');
			T1_WRITE <= '0';
			T2_WRITE <= '0';
			T3_WRITE <= '0';
			IR_IN<=(others=>'0');
			MEM_DATA_IN<=(others=>'0');
			mem_write<='0';
			IR_write<='0';
			MEM_ADD<=(others=>'0');
			RF_A1<=(others=>'0');
			RF_A2<=(others=>'0');
			RF_A3<=(others=>'0');
			RF_D3<=(others=>'0');
			IP_update <= (others => '0');
			
			left_shiftin6bit<= (others=>'0');
			left_shiftin<= (others=>'0');
			zeroflag_in<='0';
			SGN9_IN<= (others=>'0');
			SGN6_IN<= (others=>'0');
--			
    case y_present is
                when S1 =>
					 
                    MEM_ADD <= IP;
						  IR_IN <= MEM_DATA_OUT;
						  
						  
						  RF_WRITE <= '0';
						  T1_WRITE <= '0';
						  T2_WRITE <= '0';
						  T3_WRITE <= '0';
						  MEM_WRITE <= '0';
						  IR_WRITE <= '1';
						  zeroflag_reg_write <= '0';
                    PQR <= "000";  
          
                    y_next <= S2;
						

                --- LAYER TWO STATES --
                when S2 =>
                    RF_A1 <= IR_OUT(11 downto 9);
                    RF_A2 <= IR_OUT(8 downto 6);
                    T1_IN <= RF_D1;
                    T2_IN <= RF_D2;
						  
						   RF_WRITE <= '0';
						   T1_WRITE <= '1';
							T2_WRITE <= '1';
							T3_WRITE <= '0';
							MEM_WRITE <= '0';
							IR_WRITE <= '0';
							zeroflag_reg_write <= '0';
							PQR <="000";
													  
						   case IR_OUT(15 downto 12) is 
                        when "0000"|"0010"|"0011"|"0100"|"0110"|"0101" =>
                            y_next <= S3;
                        when "1010"|"1011"|"0001"=>
                            y_next <= S7;
                        when "1000"=>
                            y_next <= S3_LHI;
                        when "1001" =>
                            y_next <= S3_LLI;
								when "1111"=>
                            y_next <= S3_JLR;
                        when "1100"=>
                            y_next <= S16;
                        when "1101" =>
                            y_next <= S3JAL;	
								when others=>
									 y_next <= S1;
								end case;


                    

                -- LAYER THREE STATES --
                when S3 => -- EXECUTION
                     aluA<= T1_OUT;
                     aluB <= T2_OUT;
               
                     T3_IN <= aluC;
							
						  
						   RF_WRITE <= '0';
							T1_WRITE <= '0';
							T2_WRITE <= '0';
							T3_WRITE <= '1';
							MEM_WRITE <= '0';
							IR_WRITE <= '0';
							zeroflag_reg_write <= '0';
							
							PQR <= IR_OUT(14 downto 12);
							
                     y_next <= S4;
                
                when S7=>
						   if(IR_OUT(15 downto 12) = "0001") then
                     aluA <= T1_OUT;
						   else
						   aluA <= T2_OUT;
						   end if;
						   
                     SGN6_IN <= IR_OUT(5 downto 0);
                     aluB <= SGN6_OUT;                    
                     T3_IN<= aluC;
						  
						   RF_WRITE <= '0';
							T1_WRITE <= '0';
							T2_WRITE <= '0';
							T3_WRITE <= '1';
							MEM_WRITE <= '0';
							IR_WRITE <= '0';
							zeroflag_reg_write <= '0';
							PQR <= "000";

                     case IR_OUT(15 downto 12) is 
                        when "1010" =>
                            y_next <= S8;
                        when "1011"=>
                            y_next <= S13;
                        when "0001"=>
                            y_next <= S4_ADI;
                        when others =>
                            y_next <= S1;     -- FATAL: GOING BACK TO ONE IN CASE OF ERROR
                    end case;

                when S3_LHI =>
                     T3_IN <= IR_OUT(7 downto 0) & "00000000";
                       
							RF_WRITE <= '0';
							T1_WRITE <= '0';
							T2_WRITE <= '0';
							T3_WRITE <= '1';
							MEM_WRITE <= '0';
							IR_WRITE <= '0';
							zeroflag_reg_write <= '0';
							PQR <= "000" ;
															
							y_next <= S4_LI;	
                
                when S3_LLI =>
                     T3_IN <= "00000000" & IR_OUT(7 downto 0);
                    
						   RF_WRITE <= '0';
							T1_WRITE <= '0';
							T2_WRITE <= '0';
							T3_WRITE <= '1';
							MEM_WRITE <= '0';
							IR_WRITE <= '0';
							zeroflag_reg_write <= '0';
							PQR <= "000" ;
							
							y_next <= S4_LI;
                
                when S16 =>
                     aluA <= T1_OUT;
                     aluB <= T2_OUT;
                    
						   zeroflag_in <= zero_flag;
						   
						   
						   RF_WRITE <= '0';
							T1_WRITE <= '0';
							T2_WRITE <= '0';
							T3_WRITE <= '0';
							MEM_WRITE <= '0';
							zeroflag_reg_write <= '1';
						
							PQR <= "010"; 
							y_next <= S17;

                
								
							
          
				   when S3_JLR =>
					      				
							RF_A3 <= IR_OUT(11 downto 9);
							RF_D3 <= IP;
							
							IP_update <= T2_OUT ;
 														
							RF_WRITE <= '1';
							T1_WRITE <= '0';
							T2_WRITE <= '0';
							T3_WRITE <= '0';
							MEM_WRITE <= '0';
							IR_WRITE <= '0';
							zeroflag_reg_write <= '0';
							
							PQR <= "000";
						
                     y_next <= S1 ;
                
            -- LAYER FOUR STATES -- 

                when S4=> -- FINAL STATE FOR R TYPE INSTRUCTIONS
					 
							RF_D3 <= T3_OUT;
                     RF_A3 <= IR_OUT(5 downto 3);
							T3_IN <= "0000000000000000";
                    
					      aluA <= IP;
							aluB <= "0000000000000001";
							IP_update <= aluC;
							
						   RF_WRITE <= '1';
							T1_WRITE <= '0';
							T2_WRITE <= '0';
							T3_WRITE <= '1';
							MEM_WRITE <= '0';
							IR_WRITE <= '0';
						   zeroflag_reg_write <= '0';
							PQR <= "000";
						
							y_next<= S1;
                    
                
                when S4_LI =>
							
						   RF_D3 <= T3_OUT;
                     RF_A3 <= IR_OUT (11 downto 9);
							T3_IN <= "0000000000000000";
							
							
							aluA <= IP;
							aluB <= "0000000000000001";
							IP_update <= aluC;
                   				 
					 
							RF_WRITE <= '1';
							T1_WRITE <= '0';
							T2_WRITE <= '0';
							T3_WRITE <= '1';
							MEM_WRITE <= '0';
							IR_WRITE <= '0';
							zeroflag_reg_write <= '0';
							PQR <= "000";
									
                     y_next <= S1;
                
                when S17=>
							
							
							
							aluA <= IP;
							
							left_shiftin6bit <= IR_OUT (5 downto 0);
                     SGN6_IN <= left_shiftout6bit;
							
							case zeroflag_out is 
                        when '1' =>
                            aluB <= SGN6_OUT;
                        when others=>
                            aluB<= "0000000000000001";
         
                     end case;	
			
                     IP_update <= aluC;
							
							RF_WRITE <= '1';
							T1_WRITE <= '0';
							T2_WRITE <= '0';
							T3_WRITE <= '0';
							MEM_WRITE <= '0';
							IR_WRITE <= '0';
							zeroflag_reg_write <= '0';
							PQR <= "000";
							                                              
                     y_next <= S1;

                when S8 =>
							
							MEM_ADD <= T3_OUT;
                     T3_IN <= MEM_DATA_OUT;    
							
                
						   RF_WRITE <= '0';
							T1_WRITE <= '0';
							T2_WRITE <= '0';
							T3_WRITE <= '1';
							MEM_WRITE <= '0';
							IR_WRITE <= '0';
							zeroflag_reg_write <= '0';
					
							PQR <= "000";
						
                     y_next <= S9;
                
                when S13 =>
					 
						   MEM_ADD <= T3_OUT;
                     MEM_DATA_IN <= T1_OUT;
							T3_IN <= "0000000000000000";
							
							aluA <= IP;
							aluB <= "0000000000000001";
							IP_update <= aluC;
							
					      RF_WRITE <= '0';
							T1_WRITE <= '0';
							T2_WRITE <= '0';
							T3_WRITE <= '1';
							MEM_WRITE <= '1';
							IR_WRITE <= '0';
							zeroflag_reg_write <= '0';

							PQR <= "000";
                    
                     y_next <= S1;
                            
                
                ---- LAYER 5 ---

                when S9 =>
					 
							RF_D3 <= T3_OUT;
                     RF_A3 <= IR_OUT( 11 downto 9);
							
							aluA <= IP;
							aluB <= "0000000000000001";
							IP_update <= aluC;
					      T3_IN <= "0000000000000000";
							RF_WRITE <= '1';
							T1_WRITE <= '0';
							T2_WRITE <= '0';
							T3_WRITE <= '1';
							MEM_WRITE <= '0';
							IR_WRITE <= '0';
							zeroflag_reg_write <= '0';
							
							PQR <= "000";
                    
                     
							case IR_OUT(15 downto 12) is 
                        
                        when "1010"=>
                            y_next <= S1;
                        when others=>
									 y_next <= S1;
								end case;
								
					 when S3JAL =>
					 
							aluA <= IP;
							
							RF_A3 <=  IR_OUT (11 downto 9);
							RF_D3 <= aluA ;
							
							left_shiftin <= IR_OUT (8 downto 0);
                     SGN9_IN <= left_shiftout;
							
							aluB <= SGN9_OUT;
							
							IP_update <= aluC;
							
							RF_WRITE <= '1';
							T1_WRITE <= '0';
							T2_WRITE <= '0';
							T3_WRITE <= '0';
							MEM_WRITE <= '0';
							IR_WRITE <= '0';
							zeroflag_reg_write <= '0';
							
							PQR <= "000";
							
							y_next <= S1;
							
							
						  
					 when S4_ADI =>
					 
					      RF_D3 <= T3_OUT;
						   RF_A3 <= IR_OUT(8 downto 6);  

							aluA <= IP;
							aluB <= "0000000000000001";
							IP_update <= aluC;
							
							T3_IN <= "0000000000000000";
                
						   RF_WRITE <= '1';
							T1_WRITE <= '0';
							T2_WRITE <= '0';
							T3_WRITE <= '1';
							MEM_WRITE <= '0';
							IR_WRITE <= '0';
							zeroflag_reg_write <= '0';
						
							PQR <= "000";
						   y_next <= S1 ;
                


		end case;
      
		
		
      end PROCESS;




end architecture struct;