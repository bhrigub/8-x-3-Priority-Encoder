library ieee;
use ieee.std_logic_1164.all;

entity enco_p is
 port(e: in std_logic_vector(7 downto 0);
			eo0,eo1,eo2: out std_logic);
end enco_p;

architecture arch_enco of enco_p is
 signal eout: std_logic_vector(2 downto 0);
 
 begin
eout <= "111" when e(7)='1' else
        "110" when e(6)='1' else
        "101" when e(5)='1' else
        "100" when e(4)='1' else
        "011" when e(3)='1' else
        "010" when e(2)='1' else
        "001" when e(1)='1' else
        "000";

eo0 <= eout(2);
eo1 <= eout(1);
eo2 <= eout(0);
end arch_enco;