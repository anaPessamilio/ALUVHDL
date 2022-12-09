library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity calculadora is 
    port(

        number : in std_logic_vector(7 downto 0);
        input_n : in std_logic;
        opr : in std_logic_vector(1 downto 0);
        input_opr : in std_logic;
        reset : in std_logic;
        clk : in std_logic_;
        res : out std_logic_vector(7 downto 0)

    );
end calculadora;

architecture behavior of calculadora is
    
    signal number_1,number_2,result : std_logic_vector(7 downto 0);

begin
    process (clk,reset,input_n,input_opr) is
        begin
            if rising_edge(clk) then

                if rising_edge(input_n) then
                    if number_1 = null then
                        number_1 <= number;
                    else
                        number_2 <= number;
                    end if;
                end if;
                if rising_edge(input_opr) then
                    case opr is
                        when "00"
                        result <= to_integer(unsigned(number_1))*to_integer(unsigned(number_2));
                        when "01"   
                        result <=to_integer(unsigned(number_1))/to_integer(unsigned(number_2));
                        when "10"
                        result <=to_integer(unsigned(number_1))+to_integer(unsigned(number_2));
                        when "11"
                        result <= to_integer(unsigned(number_1))-to_integer(unsigned(number_2));
                    end case;
                    res = std_logic_vector(to_unsigned(result,8));
                    number_1 <= std_logic_vector(to_unsigned(result,8));
                end if;
                if rising_edge(reset) then
                    number_1 <= null;
                    number_2 <= null;
                    opr <= null;
                    result <=null;
            end if;
        end process calcula;
end



