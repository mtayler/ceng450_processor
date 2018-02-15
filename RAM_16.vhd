library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;


entity ram is
    port(
         clk      : in  std_logic;
			wr_enable: in  std_logic;
         addr     : in  std_logic_vector (6 downto 0);
         data     : out std_logic_vector (7 downto 0)
         );
end ram;

architecture Behavioural of ram is

    type RAM_TYPE is array (0 to 127) of std_logic_vector (7 downto 0);

    variable ram_content : RAM_TYPE;
begin

p1:    process (clk)
	variable add_in : integer := 0;
	begin
	if rising_edge(clk) then
		add_in := conv_integer(unsigned(addr));
		if (wr_enable='1') then
			ram_content(add_in) <= data;
		else
			data <= ram_content(add_in);
		end if;
	end if;
end process;

end Behavioural;

