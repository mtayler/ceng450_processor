library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity ram is
    port(
			rst		: in  std_logic;
         clk      : in  std_logic;
			wr_enable: in  std_logic;
         addr     : in  std_logic_vector (15 downto 0);
         data     : inout std_logic_vector (15 downto 0)
         );
end ram;

architecture Behavioural of ram is
    type RAM_TYPE is array (0 to 65535) of std_logic_vector (7 downto 0);
	 shared variable ram_content : RAM_TYPE;
	 shared variable add_in : integer := 0;
begin

data <= (others => 'Z') when wr_enable='1' else ram_content(add_in) & ram_content(add_in+1);

p1: process (clk,rst)
begin
	add_in := to_integer(unsigned(addr));
	
	if (rst='1') then
		ram_content := (others => (others => '0'));
	
	elsif rising_edge(clk) then
		if (wr_enable='1') then -- only write on a clock edge
			ram_content(add_in) := data(15 downto 8);
			ram_content(add_in+1) := data(7 downto 0);
		end if;
	end if;
end process;

end Behavioural;

