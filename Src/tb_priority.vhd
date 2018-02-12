library ieee;
use ieee.std_logic_1164.all;

entity tb_p_encoder is
end entity;

architecture arc_tb of tb_p_encoder is
  component enco_p
    port(e             : in  std_logic_vector(7 downto 0);
         eo0, eo1, eo2 : out std_logic);
  end component;

  signal I          : std_logic_vector(7 downto 0);
  signal Y1, Y2, Y3 : std_logic;

begin

  U1 : enco_p
    port map(I, Y1, Y2, Y3);

  process

  begin
    I <= x"21"; wait for 10 ns;
    I <= x"31"; wait for 10 ns;
    I <= x"58"; wait for 10 ns;
    I <= x"79"; wait for 10 ns;
    I <= x"FE"; wait for 10 ns;
    I <= x"80"; wait for 10 ns;
    I <= x"91"; wait for 10 ns;
    I <= x"58"; wait for 10 ns;
    I <= x"85"; wait for 10 ns;
    I <= x"AC"; wait for 10 ns;
    I <= x"DE"; wait for 10 ns;
    I <= x"0D"; wait for 10 ns;
    I <= x"F0"; wait for 10 ns;

    wait;
  end process;

end architecture;
