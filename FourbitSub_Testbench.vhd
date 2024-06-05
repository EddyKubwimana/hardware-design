
library ieee;
use ieee.std_logic_1164.all;

entity FourbitSub_Testbench is
end entity FourbitSub_Testbench;

architecture tb_arch of FourbitSub_Testbench is
    -- Signal declaration for inputs and outputs
    signal a, b : std_logic_vector(3 downto 0);
    signal cin : std_logic;
    signal sum : std_logic_vector(3 downto 0);
    signal cout : std_logic;

begin
    -- Instantiate the unit under test (UUT)
  UUT : entity work.subtractor4bits
    port map (
      a => a,
      b => b,
      cin => cin,
      sum => sum,
      cout => cout
    );

    -- Stimulus process to apply test vectors
    stimulus_process: process
    begin
        -- Test case 1: 2 - 3 = 1111 (no carry)
        a <= "0010";
        b <= "0011";
        cin <= '1';
        wait for 100 ps;

        -- Add more test cases as needed...
  	wait;
    end process;
end architecture tb_arch;
