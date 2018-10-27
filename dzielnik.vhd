library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity dzielnik is
generic( N : integer :=3); -- dzielnik

    Port ( clk_i : in  STD_LOGIC;
           rst_i : in  STD_LOGIC;
           led_o : out  STD_LOGIC);
end dzielnik;

architecture podziel of dzielnik is
begin

dziel : process(clk_i, rst_i)
variable zlicz_impulsy : integer;
begin

    if rst_i='1' then
		led_o <= '0';
		zlicz_impulsy := 0 ;
		elsif rising_edge(clk_i) then 
			zlicz_impulsy := zlicz_impulsy+1;
			
		if(zlicz_impulsy > N-1) then
		led_o <= '1';
		zlicz_impulsy := 0;
		end if;
		
		if(zlicz_impulsy = N/2)then Led_o <= '0'; end if;
								      -- ^ Tym mo¿na zmieniæ wype³nienie jak /2 to 50%
	 end if;

end process dziel;
end Podziel;

