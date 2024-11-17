library IEEE;
use IEEE.std_logic_1164.ALL;
entity when_else1 is
  Port ( x : in STD_LOGIC_VECTOR (1 downto 0);
           y : in STD_LOGIC_VECTOR (1 downto 0);
           z : out STD_LOGIC);
end when_else1;

architecture Behavioral of when_else1 is

begin
Z <= '1' when (X = Y) else '0';

end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity if_then_else1 is
    Port ( x : in STD_LOGIC_VECTOR (1 downto 0);
           y : in STD_LOGIC_VECTOR (1 downto 0);
           z : out STD_LOGIC);
end if_then_else1;

architecture behavioral of if_then_else1 is
begin
P1: process (X,Y)
begin
if (X = Y) then
Z <= '1';
else
Z <= '0';
end if;
end process ;
end behavioral ;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
   Library UNISIM;
use UNISIM.vcomponents.all;


entity lut_prim is
    Port ( x : in STD_LOGIC_VECTOR (1 downto 0);
           y : in STD_LOGIC_VECTOR (1 downto 0);
           z : out STD_LOGIC);
end lut_prim ;

architecture primitive of lut_prim is 
   begin 

   LUT4_inst : LUT4
   generic map (
      INIT => X"0018")
   port map (
      O => z,   -- LUT general output
      I0 => X(0), -- LUT input
      I1 => X(1), -- LUT input
      I2 => Y(0), -- LUT input
      I3 => Y(1)  -- LUT input
   );
   end primitive
    


 

