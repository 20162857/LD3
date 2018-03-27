library ieee;
use ieee.std_logic_1164.all;
 
entity IR4 is
  port (
    i_1    : in  std_logic;
    i_2    : in  std_logic;
	i_3    : in  std_logic;
    i_4    : in  std_logic;
    o_1    : out std_logic;
	o_2    : out std_logic;
	o_3    : out std_logic
    );
end IR4;
 
architecture rtl of IR4 is
begin
  o_1 <= (i_1 and i_2) and (i_3 and i_4);
  with (i_1 and i_2) and (i_3 and i_4) select
  o_2 <= '1' when '1',
		    '0' when '0',
		    '0' when others;
  o_3 <= '1' when ((i_1='1' and i_2='1') and (i_3='1' and i_4='1')) else
		   '0';
  
end rtl;