library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Trabalho 5: Organizacao e Arquitetura de Computadores 
-- Lucas Nascimento Santos Souza - 14/0151010

-- Projeto de um Banco de Registradores em VHDL
-- 	# 32 registradores de 32 bits;
-- 	# Dois barramentos de leitura;
-- 	# Um barramento para escrita de dado;
-- 	# Registrador 0 (índice zero) é constante, não pode ser alterado. Qualquer leitura deste
-- registrador retorna o valor zero e escritas não afetam o seu valor.

-- Formato do Banco de Registradores
entity BREG_OAC is
	-- WSIZE: o tamanho da palavra do banco de registradores;
	generic (WSIZE 			: natural := 32);
	port (
		clk, wren 					: in std_logic;
		radd1, radd2, wadd 	: in std_logic_vector(4 downto 0);
		wdata 						: in std_logic_vector(WSIZE-1 downto 0);
		r1, r2 						: out std_logic_vector(WSIZE-1 downto 0));
end BREG_OAC;

-- ENTRADAS
-- 	# Clk: relogio do circuito;
-- 	# WrEn: habilitacao de escrita. Ao ser acionado, o registrador enderecado por WAdd é escrito
-- com o valor presente no barramento WData na transicao de subida do relogio;
--		# WData: valor a ser escrito no registrador enderecado por Wadd, 32 bits;
--		# RAdd1: endereco do registrador a ser lido em R1, 5 bits;
--		# RAdd2: endereco do registrador a ser lido em R2, 5 bits;

-- SAIDAS
--		# R1: porta de saida para leitura do registrador enderecado por RAdd1;
--		# R2: porta de saída para leitura do registrador enderecado por RAdd2.

architecture comportamento of BREG_OAC is
	-- 32 registradores de 32 bits inicializados com 0
	type registradores is array(WSIZE-1 downto 0) of std_logic_vector(WSIZE-1 downto 0);
	signal registrador : registradores := ((others => (others => '0')));

begin
	
	processo_breg: process (Clk, RAdd1, RAdd2) begin
	
		-- Barramentos de leitura
		-- R1 <= registrador[RAdd1]
		R1 <= registrador(to_integer(unsigned(RAdd1)));
		-- R2 <= registrador[RAdd2]
		R2 <= registrador(to_integer(unsigned(RAdd2)));	
	
		if(rising_edge(Clk)) then
			-- Barramento de escrita
			if ((WrEn = '1') and (to_integer(unsigned(WAdd)) /= 0)) then
				-- registrador[WAdd] <= WData
				registrador(to_integer(unsigned(WAdd))) <= WData;
			end if;		
		end if;
	
	end process;

end architecture;

