----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:17:29 04/03/2018 
-- Design Name: 
-- Module Name:    motherboard - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_MISC.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity motherboard is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
			  inport : in STD_LOGIC_VECTOR (15 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0);
           sseg : out  STD_LOGIC_VECTOR (6 downto 0));
end motherboard;

architecture Behavioral of motherboard is
	
	 COMPONENT processor
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
			inport : IN std_logic_vector(15 downto 0);
         outport : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	
	component display_controller is
	 PORT(
		clk, reset: in std_logic;
		hex3, hex2, hex1, hex0: in std_logic_vector(3 downto 0);
		an: out std_logic_vector(3 downto 0);
		sseg: out std_logic_vector(6 downto 0)
	);
	end component;

 	--Outputs
   signal outport : std_logic_vector(15 downto 0);
	signal display : std_logic_vector(15 downto 0);
	
	signal clk_div : std_logic_vector(16 downto 0);

begin

	-- Instantiate the Unit Under Test (UUT)
   proc: processor PORT MAP (
          clk => clk,
          rst => rst,
			 inport => inport,
          outport => outport
        );
		  
	dc: display_controller PORT MAP (
		clk => clk_div(16),
		reset => rst,
		hex3 => display(15 downto 12),
		hex2 => display(11 downto 8),
		hex1 => display(7 downto 4),
		hex0 => display(3 downto 0),
		an => an,
		sseg => sseg
	);

	disp_proc: process(rst,clk,outport)
	begin
		if rst='1' then
			clk_div <= (others => '0');
			display <= (others => '0');
		elsif rising_edge(clk) then
			clk_div <= std_logic_vector(unsigned(clk_div) + 1);
			
			if or_reduce(outport) /= '0' then
				display <= outport;
			end if;
		end if;
	end process;

end Behavioral;

