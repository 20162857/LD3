library ieee;
use ieee.std_logic_1164.all;

entity process_tb is
end process_tb;

architecture behave of process_tb is
  signal r_SIG1    : std_logic := '0';
  signal r_SIG2    : std_logic := '0';
  signal r_SIG3    : std_logic := '0';
  signal r_SIG4    : std_logic := '0';
  signal w_RESULT1 : std_logic;
  signal w_RESULT2 : std_logic;
  signal w_RESULT3 : std_logic;

  component IR4 is
    port (
      i_1    : in  std_logic;
      i_2    : in  std_logic;
      i_3    : in  std_logic;
      i_4    : in  std_logic;
      o_1 	 : out std_logic;
	  o_2 	 : out std_logic;
	  o_3 	 : out std_logic);
  end component IR;

begin

  and_gate_INST : IR4
    port map (
      i_1    => r_SIG1,
      i_2    => r_SIG2,
      i_3    => r_SIG3,
      i_4    => r_SIG4,
      o_1 	 => w_RESULT1,
	  o_2 	 => w_RESULT2,
	  o_3 	 => w_RESULT3
      );
	  
	
  process is
  begin
    r_SIG1 <= '0';
    r_SIG2 <= '0';
    r_SIG3 <= '0';
    r_SIG4 <= '0';
    wait for 10 ns;
    r_SIG1 <= '1';
	r_SIG2 <= '1';
	r_SIG3 <= '1';
	r_SIG4 <= '1';
    wait for 10 ns;
    r_SIG1 <= '0';
	r_SIG2 <= '0';
	r_SIG3 <= '1';
	r_SIG4 <= '1';
    wait for 10 ns;
	r_SIG1 <= '1';
	r_SIG2 <= '1';
	r_SIG3 <= '0';
	r_SIG4 <= '0';
	wait for 10 ns;
  end process;

end behave;