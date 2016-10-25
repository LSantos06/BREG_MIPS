-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "10/21/2016 12:51:51"
                                                            
-- Vhdl Test Bench template for design  :  BREG_OAC
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BREG_OAC_vhd_tst IS
END BREG_OAC_vhd_tst;

ARCHITECTURE BREG_OAC_arch OF BREG_OAC_vhd_tst IS
-- constants                                                 
-- signals                                                   
	SIGNAL clk : STD_LOGIC := '0';
	SIGNAL r1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL r2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL radd1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL radd2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL wadd : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL wdata : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL wren : STD_LOGIC;

	COMPONENT BREG_OAC
		PORT (
			clk : IN STD_LOGIC;
			r1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			r2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			radd1 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			radd2 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			wadd : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			wren : IN STD_LOGIC
		);
	END COMPONENT;
	
BEGIN
	i1 : BREG_OAC
	PORT MAP (
-- list connections between master ports and signals
		clk => clk,
		r1 => r1,
		r2 => r2,
		radd1 => radd1,
		radd2 => radd2,
		wadd => wadd,
		wdata => wdata,
		wren => wren
	);

-- CASOS DE TESTE	
-- 	#1 Escrever uma sequencia de valores 1, 2, 3, 4 … 31 nos registradores do
-- banco e, apos, realizar a leitura de todos os registradores, em todas as
-- combinacoes possiveis: 
--				# Leitura em r1; 
-- 			# Leitura em r2;
--				# Leitura simultanea em ambos (r1 e r2 apresentam o mesmo registrador).
--		#2 Escrever no registrador zero e verificar se ele não é alterado;
-- 	#3 Escrita e leitura no mesmo ciclo, do mesmo registrador. O que acontece ?	
	
init : PROCESS                                               
-- variable declarations                                     
	BEGIN                                                        
        -- code that executes only once 

		------------------------------------------------------------------------------------
		-- CASO #1
		------------------------------------------------------------------------------------		

		------------------------------------------------------------------------------------		
		-- Escrevendo nos registradores
		WrEn <= '1'; 
		
		-- reg[1] <= 1
		Clk <= '0'; wait for 5 ns; 	
		WData <= X"00000001"; WAdd <= "00001";
		Clk <= '1'; wait for 5 ns;
		
		-- reg[2] <= 2	
		Clk <= '0'; wait for 5 ns; 		
		WData <= X"00000002"; WAdd <= "00010";
		Clk <= '1'; wait for 5 ns;
		
		-- reg[3] <= 3
		Clk <= '0'; wait for 5 ns; 
		WData <= X"00000003"; WAdd <= "00011";
		Clk <= '1'; wait for 5 ns;

		-- reg[4] <= 4
		Clk <= '0'; wait for 5 ns;
		WData <= X"00000004"; WAdd <= "00100";
		Clk <= '1'; wait for 5 ns;		

		-- reg[5] <= 5		
		Clk <= '0'; wait for 5 ns;
		WData <= X"00000005"; WAdd <= "00101";
		Clk <= '1'; wait for 5 ns;		

		-- reg[6] <= 6
		Clk <= '0'; wait for 5 ns; 		 
		WData <= X"00000006"; WAdd <= "00110";
		Clk <= '1'; wait for 5 ns;		

		-- reg[7] <= 7		
		Clk <= '0'; wait for 5 ns;
		WData <= X"00000007"; WAdd <= "00111";
		Clk <= '1'; wait for 5 ns;		

		-- reg[8] <= 8		
		Clk <= '0'; wait for 5 ns; 
		WData <= X"00000008"; WAdd <= "01000";
		Clk <= '1'; wait for 5 ns;		

		-- reg[9] <= 9		
		Clk <= '0'; wait for 5 ns;
		WData <= X"00000009"; WAdd <= "01001";
		Clk <= '1'; wait for 5 ns;		

		-- reg[10] <= 10
		Clk <= '0'; wait for 5 ns; 		
		WData <= X"0000000A"; WAdd <= "01010";
		Clk <= '1'; wait for 5 ns;		

		-- reg[11] <= 11		
		Clk <= '0'; wait for 5 ns;
		WData <= X"0000000B"; WAdd <= "01011";
		Clk <= '1'; wait for 5 ns;		

		-- reg[12] <= 12
		Clk <= '0'; wait for 5 ns; 		
		WData <= X"0000000C"; WAdd <= "01100";
		Clk <= '1'; wait for 5 ns;		

		-- reg[13] <= 13
		Clk <= '0'; wait for 5 ns; 	
		WData <= X"0000000D"; WAdd <= "01101";
		Clk <= '1'; wait for 5 ns;		

		-- reg[14] <= 14		
		Clk <= '0'; wait for 5 ns; 
		WData <= X"0000000E"; WAdd <= "01110";
		Clk <= '1'; wait for 5 ns;		
		
		-- reg[15] <= 15
		Clk <= '0'; wait for 5 ns; 
		WData <= X"0000000F"; WAdd <= "01111";
		Clk <= '1'; wait for 5 ns;		
		
		-- reg[16] <= 16
		Clk <= '0'; wait for 5 ns; 
		WData <= X"00000010"; WAdd <= "10000";
		Clk <= '1'; wait for 5 ns;		
	
		-- reg[17] <= 17	
		Clk <= '0'; wait for 5 ns; 
		WData <= X"00000011"; WAdd <= "10001";
		Clk <= '1'; wait for 5 ns;		

		-- reg[18] <= 18	
		Clk <= '0'; wait for 5 ns; 	
		WData <= X"00000012"; WAdd <= "10010";
		Clk <= '1'; wait for 5 ns;

		-- reg[19] <= 19		
		Clk <= '0'; wait for 5 ns;
		WData <= X"00000013"; WAdd <= "10011";
		Clk <= '1'; wait for 5 ns;		

		-- reg[20] <= 20
		Clk <= '0'; wait for 5 ns; 		
		WData <= X"00000014"; WAdd <= "10100";
		Clk <= '1'; wait for 5 ns;
	
		-- reg[21] <= 21	
		Clk <= '0'; wait for 5 ns; 
		WData <= X"00000015"; WAdd <= "10101";
		Clk <= '1'; wait for 5 ns;		
		
		-- reg[22] <= 22
		Clk <= '0'; wait for 5 ns; 
		WData <= X"00000016"; WAdd <= "10110";
		Clk <= '1'; wait for 5 ns;		

		-- reg[23] <= 23		
		Clk <= '0'; wait for 5 ns; 
		WData <= X"00000017"; WAdd <= "10111";
		Clk <= '1'; wait for 5 ns;		

		-- reg[24] <= 24		
		Clk <= '0'; wait for 5 ns;		
		WData <= X"00000018"; WAdd <= "11000";
		Clk <= '1'; wait for 5 ns;		
		
		-- reg[25] <= 25
		Clk <= '0'; wait for 5 ns; 
		WData <= X"00000019"; WAdd <= "11001";
		Clk <= '1'; wait for 5 ns;		

		-- reg[26] <= 26		
		Clk <= '0'; wait for 5 ns; 
		WData <= X"0000001A"; WAdd <= "11010";
		Clk <= '1'; wait for 5 ns;

		-- reg[27] <= 27		
		Clk <= '0'; wait for 5 ns;
		WData <= X"0000001B"; WAdd <= "11011";
		Clk <= '1'; wait for 5 ns;		

		-- reg[28] <= 28		
		Clk <= '0'; wait for 5 ns;
		WData <= X"0000001C"; WAdd <= "11100";
		Clk <= '1'; wait for 5 ns;		

		-- reg[29] <= 29		
		Clk <= '0'; wait for 5 ns; 
		WData <= X"0000001D"; WAdd <= "11101";
		Clk <= '1'; wait for 5 ns;		

		-- reg[30] <= 30		
		Clk <= '0'; wait for 5 ns; 
		WData <= X"0000001E"; WAdd <= "11110";
		Clk <= '1'; wait for 5 ns;		

		-- reg[31] <= 31		
		Clk <= '0'; wait for 5 ns;
		WData <= X"0000001F"; WAdd <= "11111";
		Clk <= '1'; wait for 5 ns;		
		
		------------------------------------------------------------------------------------
		-- Lendo os registradores
		WrEn <= '0';
		
		-- reg[1]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "00001";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "00001";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "00001"; RAdd2 <= "00001";
		Clk <= '1'; wait for 5 ns;	
		
		-- reg[2]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "00010";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "00010";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "00010"; RAdd2 <= "00010";
		Clk <= '1'; wait for 5 ns;	

		-- reg[3]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "00011";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "00011";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "00011"; RAdd2 <= "00011";
		Clk <= '1'; wait for 5 ns;	
		
		-- reg[4]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "00100";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "00100";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "00100"; RAdd2 <= "00100";
		Clk <= '1'; wait for 5 ns;

		-- reg[5]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "00101";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "00101";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "00101"; RAdd2 <= "00101";
		Clk <= '1'; wait for 5 ns;	

		-- reg[6]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "00110";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "00110";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "00110"; RAdd2 <= "00110";
		Clk <= '1'; wait for 5 ns;

		-- reg[7]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "00111";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "00111";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "00111"; RAdd2 <= "00111";
		Clk <= '1'; wait for 5 ns;		
		
		-- reg[8]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "01000";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "01000";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "01000"; RAdd2 <= "01000";
		Clk <= '1'; wait for 5 ns;			

		-- reg[9]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "01001";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "01001";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "01001"; RAdd2 <= "01001";
		Clk <= '1'; wait for 5 ns;	

		-- reg[10]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "01010";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "01010";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "01010"; RAdd2 <= "01010";
		Clk <= '1'; wait for 5 ns;	

		-- reg[11]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "01011";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "01011";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "01011"; RAdd2 <= "01011";
		Clk <= '1'; wait for 5 ns;		
		
		-- reg[12]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "01100";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "01100";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "01100"; RAdd2 <= "01100";
		Clk <= '1'; wait for 5 ns;				
		
		-- reg[13]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "01101";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "01101";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "01101"; RAdd2 <= "01101";
		Clk <= '1'; wait for 5 ns;			
		
		-- reg[14]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "01110";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "01110";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "01110"; RAdd2 <= "01110";
		Clk <= '1'; wait for 5 ns;			

		-- reg[15]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "01111";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "01111";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "01111"; RAdd2 <= "01111";
		Clk <= '1'; wait for 5 ns;		

		-- reg[16]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "10000";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "10000";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "10000"; RAdd2 <= "10000";
		Clk <= '1'; wait for 5 ns;	

		-- reg[17]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "10001";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "10001";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "10001"; RAdd2 <= "10001";
		Clk <= '1'; wait for 5 ns;

		-- reg[18]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "10010";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "10010";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "10010"; RAdd2 <= "10010";
		Clk <= '1'; wait for 5 ns;			
		
		-- reg[19]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "10011";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "10011";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "10011"; RAdd2 <= "10011";
		Clk <= '1'; wait for 5 ns;		

		-- reg[20]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "10100";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "10100";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "10100"; RAdd2 <= "10100";
		Clk <= '1'; wait for 5 ns;	

		-- reg[21]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "10101";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "10101";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "10101"; RAdd2 <= "10101";
		Clk <= '1'; wait for 5 ns;		

		-- reg[22]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "10110";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "10110";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "10110"; RAdd2 <= "10110";
		Clk <= '1'; wait for 5 ns;	

		-- reg[23]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "10111";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "10111";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "10111"; RAdd2 <= "10111";
		Clk <= '1'; wait for 5 ns;			
		
		-- reg[24]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "11000";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "11000";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "11000"; RAdd2 <= "11000";
		Clk <= '1'; wait for 5 ns;		

		-- reg[25]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "11001";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "11001";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "11001"; RAdd2 <= "11001";
		Clk <= '1'; wait for 5 ns;		

		-- reg[26]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "11010";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "11010";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "11010"; RAdd2 <= "11010";
		Clk <= '1'; wait for 5 ns;		

		-- reg[27]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "11011";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "11011";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "11011"; RAdd2 <= "11011";
		Clk <= '1'; wait for 5 ns;	

		-- reg[28]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "11100";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "11100";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "11100"; RAdd2 <= "11100";
		Clk <= '1'; wait for 5 ns;	

		-- reg[29]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "11101";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "11101";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "11101"; RAdd2 <= "11101";
		Clk <= '1'; wait for 5 ns;		

		-- reg[30]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "11110";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "11110";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "11110"; RAdd2 <= "11110";
		Clk <= '1'; wait for 5 ns;

		-- reg[31]
		-- Lendo em R1
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "11111";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em R2
		Clk <= '0'; wait for 5 ns;
		RAdd2 <= "11111";
		Clk <= '1'; wait for 5 ns;	
		
		-- Lendo em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "11111"; RAdd2 <= "11111";
		Clk <= '1'; wait for 5 ns;		


		------------------------------------------------------------------------------------
		-- CASO #2
		------------------------------------------------------------------------------------			

		------------------------------------------------------------------------------------		
		-- Escrevendo no reg[0] (registrador que nao pode ser alterado)
		WrEn <= '1'; 
		
		-- reg[0] <= -1
		Clk <= '0'; wait for 5 ns; 	
		WData <= X"FFFFFFFF"; WAdd <= "00000";
		Clk <= '1'; wait for 5 ns;
		
		-- Lendo o reg[0] em ambos
		Clk <= '0'; wait for 5 ns;
		RAdd1 <= "00000"; RAdd2 <= "00000";
		Clk <= '1'; wait for 5 ns;
		
		-- reg[0] deve sempre ser 0, independente de uma tentativa de escrita no mesmo
		
		------------------------------------------------------------------------------------
		-- CASO #3
		------------------------------------------------------------------------------------			

		------------------------------------------------------------------------------------
		-- Escritura e leitura no mesmo ciclo
		Clk <= '0'; wait for 5 ns;
		
		-- reg[1] <= -1	
		WData <= X"FFFFFFFF"; WAdd <= "00001";
		
		-- Lendo o reg[1] em ambos
		RAdd1 <= "00001"; RAdd2 <= "00001";		
		
		Clk <= '1'; wait for 5 ns;		
		-- Se a escrita e a leitura foram feitas em um ciclo, o valor lido eh o valor anterior do reg[1]		
		
		Clk <= '0'; wait for 5 ns;
		Clk <= '1'; wait for 5 ns;
		-- Se mais um ciclo acontecer, o valor atual de reg[1] eh lido		
		
	WAIT;                                                       
END PROCESS init; 
                                          
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
	BEGIN                                                         
        -- code executes for every event on sensitivity list  
	WAIT;                                                        
END PROCESS always;                                          
END BREG_OAC_arch;
