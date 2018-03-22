library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;


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

    variable ram_content : RAM_TYPE;
begin

p1:    process (clk,rst)
	variable add_in : integer := 0;
	begin
	if rst then
		ram_content := (others => 0);
		data <= (others => '0');
	
	elsif rising_edge(clk) then
		add_in := conv_integer(unsigned(addr));
		if (wr_enable='1') then
			ram_content(add_in) <= data(7 downto 0);
			if (add_in < 65535) then
				ram_content(add_in+1) <= data(15 downto 0);
			end if;
			
		else
			data(7 downto 0) <= ram_content(add_in);
			if (add_in < 65535) then
				data(15 downto 0) <= ram_content(add_in+1);
			else
				data(15 downto 0) <= x"00";
			end if;
			
		end if;
	end if;
end process;

end Behavioural;

