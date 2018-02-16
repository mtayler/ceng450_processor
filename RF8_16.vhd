
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity register_file is
port(rst : in std_logic; clk: in std_logic;
--read signals
rd_index1: in std_logic_vector(2 downto 0); 
rd_index2: in std_logic_vector(2 downto 0); 
rd_data1: out std_logic_vector(15 downto 0); 
rd_data2: out std_logic_vector(15 downto 0);
--write signals
wr_index: in std_logic_vector(2 downto 0); 
wr_data: in std_logic_vector(15 downto 0)
--wr_enable: in std_logic
);
end register_file;

architecture behavioural of register_file is

type reg_array is array (integer range 0 to 7) of std_logic_vector(15 downto 0);
--internals signals
signal reg_file : reg_array; begin
--write operation 
process(clk)
begin
   if(clk='0' and clk'event) then
		if(rst='1') then
			for i in 0 to 7 loop
				reg_file(i)<= (others => '0'); 
			end loop;
		--elsif (wr_enable='1') then
		else
			reg_file(to_integer(unsigned(wr_index))) <= wr_data;
		end if;
	end if;
end process;

--read operation
rd_data1 <=	reg_file(to_integer(unsigned(rd_index1)));
rd_data2 <= reg_file(to_integer(unsigned(rd_index2)));

end behavioural;