--library necessary 
library ieee;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;

-- Entity definition

entity reg8bit is
    Port (
        clk   : in  std_logic;        -- Clock
        reset : in  std_logic;        -- reset input
        we    : in  std_logic;        -- enable input
        oe    : in  std_logic;        -- Output enable input
        d     : in  std_logic_vector (7 downto 0);
        q     : out std_logic_vector(7 downto 0);  
        dout  : out std_logic_vector (7 downto 0)  
    );
end reg8bit;



architecture regtechure of reg8bit is


    signal reg : std_logic_vector (7 downto 0);

begin

    process (clk)

    begin
        if rising_edge(clk) then
            if reset = '1' then
                reg <= (others => '0'); 
            elsif we = '1' then
                reg <= d;             
            end if;
        end if;

    end process;

    q <= reg; 

    process (oe)
    begin
        if oe = '1' then
            dout <= reg; 
        else
            dout <= (others => 'Z');
        end if;
    end process;

end regtechure;
