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
use ieee.numeric_std.all;

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

		-- Escrevendo nos registradores
		WrEn <= '1'; 
		
		for RegAdd in 1 to 31 loop
			Clk <= '0'; wait for 5 ns; 	
			WData <= std_logic_vector(to_unsigned(RegAdd, 32)); WAdd <= std_logic_vector(to_unsigned(RegAdd, 5));
			Clk <= '1'; wait for 5 ns;	
		end loop;
		
		-- Lendo os registradores
		WrEn <= '0';

		for RegAdd in 1 to 31 loop
			-- Lendo em R1
			Clk <= '0'; wait for 5 ns;
			RAdd1 <= std_logic_vector(to_unsigned(RegAdd, 5));
			Clk <= '1'; wait for 5 ns;	
		
			-- Lendo em R2
			Clk <= '0'; wait for 5 ns;
			RAdd2 <= std_logic_vector(to_unsigned(RegAdd, 5));
			Clk <= '1'; wait for 5 ns;	
		
			-- Lendo em ambos
			Clk <= '0'; wait for 5 ns;
			RAdd1 <= std_logic_vector(to_unsigned(RegAdd, 5));
			Clk <= '1'; wait for 5 ns;	
		end loop;

		------------------------------------------------------------------------------------
		-- CASO #2
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
