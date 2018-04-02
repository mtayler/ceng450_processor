library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity ram is
    port(
         clk      : in  std_logic;
			wr_enable: in  std_logic;
         addr     : in  std_logic_vector (15 downto 0);
         data_in  : in  std_logic_vector (15 downto 0);
			data_out : out std_logic_vector (15 downto 0)
         );
end ram;

architecture Behavioural of ram is
    type RAM_TYPE is array (0 to 32767) of std_logic_vector (15 downto 0);
	 shared variable ram_content : RAM_TYPE;
	 shared variable add_in : integer := 0;
begin

process (clk)
begin
	-- make memory byte-addressable
	add_in := to_integer(shift_right(unsigned(addr),1));
	
	if falling_edge(clk) then
		if wr_enable='1' then -- only write on a clock edge
			ram_content(add_in) := data_in;
		else
			data_out <= ram_content(add_in);
		end if;
	end if;
	
end process;

end Behavioural;

