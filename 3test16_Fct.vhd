
--
-- Created on Wed 29 Mar 2017 16:02:16 PDT
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;


entity ROM_VHDL is
    port(
         clk      : in  std_logic;
         addr     : in  std_logic_vector (6 downto 0);
         data     : out std_logic_vector (15 downto 0)
         );
end ROM_VHDL;

architecture BHV of ROM_VHDL is

    type ROM_TYPE is array (0 to 127 ) of std_logic_vector (15 downto 0);

    constant rom_content : ROM_TYPE := (
		0000 => "0100001001000000", -- 		IN				r1				           
		0001 => "0010010011111111", -- 		LOADIMM.LOWER	0xff     
		0002 => "0010010111111111", -- 		LOADIMM.UPPER	0xff			  
		0003 => "0100000111000000", -- 		OUT				r7				          
		0004 => "0010010100000000", -- 		LOADIMM.UPPER	0x00			  
		0005 => "0010010000000111", -- 		LOADIMM.LOWER	0x07
		0006 => "0000010010111001", -- 		SUB				r2 r7 r1		      
		0007 => "0000111010000000", -- 		TEST			r2				          
		0008 => "1000001000010001", -- 		BRR.N			ERROR			       
		0009 => "0000111001000000", -- 		TEST			r1				          
		0010 => "1000010000001011", -- 		BRR.Z			ERROR			       
		0011 => "1000001000001000", -- 		BRR.N			ERROR			       
		0012 => "0010011010001000", -- 		MOV				r2 r1			        
		0013 => "0010010100000000", -- 		LOADIMM.UPPER	0x00     
		0014 => "0010010000000001", -- 		LOADIMM.LOWER	0x01
		0015 => "0010011110111000", --      MOV r6, r7		
		0016 => "0000010001001110", -- LOOP.START:	SUB			r1 r1 r7		
		0017 => "0000111001000000", -- 		TEST			r1				          
		0018 => "1000010000000010", -- 		BRR.Z			LOOP.EXIT      
		0019 => "0000011010010001", -- 		MUL				r2 r2 r1		      
		0020 => "1000000111111011", -- 		BRR				LOOP.START		    
		0021 => "0100000010000000", -- LOOP.EXIT:	OUT			r2				  
		0022 => "0000000000000000", -- 		NOP                    
		0023 => "0000000000000000", -- 		NOP                    
		0024 => "0000000000000000", -- 		NOP                    
		0025 => "1000000111111011", -- 		BRR	LOOP.EXIT          
		0026 => "0010010101010101", -- ERROR:	LOADIMM.UPPER	0x55
		0027 => "0010010001010101", -- 		LOADIMM.LOWER	0x55     
		0028 => "0100000111000000", -- 		OUT				r7				          
		0029 => "0000000000000000", -- 		NOP                    
		0030 => "0000000000000000", -- 		NOP                    
		0031 => "0000000000000000", -- 		NOP                    
		0032 => "0000000000000000", -- 		NOP                    
		0033 => "0000000000000000", -- 		NOP                    
		0034 => "1000000111110111", -- 		BRR				ERROR           
		0035 => "0001000000000000", -- 		HALT	
		others => x"0000"
	);
begin

p1:    process (clk)
	 variable add_in : integer := 0;
    begin
        if rising_edge(clk) then
					 add_in := conv_integer(unsigned(addr));
                data <= rom_content(add_in);
        end if;
    end process;
end BHV;


