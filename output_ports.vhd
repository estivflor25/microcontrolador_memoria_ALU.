library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity output_ports is
    Port ( address    : in  STD_LOGIC_VECTOR (7 downto 0);
           data_in    : in  STD_LOGIC_VECTOR (7 downto 0);
           writen     : in  STD_LOGIC;  
           clock      : in  STD_LOGIC;
           reset      : in  STD_LOGIC;
           port_out_00: out STD_LOGIC_VECTOR (7 downto 0);
           port_out_01: out STD_LOGIC_VECTOR (7 downto 0);
           port_out_02: out STD_LOGIC_VECTOR (7 downto 0);
           port_out_03: out STD_LOGIC_VECTOR (7 downto 0);
           port_out_04: out STD_LOGIC_VECTOR (7 downto 0);
           port_out_05: out STD_LOGIC_VECTOR (7 downto 0);
           port_out_06: out STD_LOGIC_VECTOR (7 downto 0);
           port_out_07: out STD_LOGIC_VECTOR (7 downto 0);
           port_out_08: out STD_LOGIC_VECTOR (7 downto 0);
           port_out_09: out STD_LOGIC_VECTOR (7 downto 0);
           port_out_10: out STD_LOGIC_VECTOR (7 downto 0);
           port_out_11: out STD_LOGIC_VECTOR (7 downto 0);
           port_out_12: out STD_LOGIC_VECTOR (7 downto 0);
           port_out_13: out STD_LOGIC_VECTOR (7 downto 0);
           port_out_14: out STD_LOGIC_VECTOR (7 downto 0);
           port_out_15: out STD_LOGIC_VECTOR (7 downto 0));
end output_ports;

architecture Behavioral of output_ports is
    
begin


    U1 : process (clock, reset)
    begin
        if (reset = '0') then
            port_out_00 <= x"00";
        elsif (clock'event and clock='1') then
            if (address = x"E0" and writen = '1') then
                port_out_00 <= data_in;
            end if;
        end if;
    end process;

    U2 : process (clock, reset)
    begin
        if (reset = '0') then
            port_out_01 <= x"00";
        elsif (clock'event and clock='1') then
            if (address = x"E1" and writen = '1') then
                port_out_01 <= data_in;
            end if;
        end if;
    end process;

    U3 : process (clock, reset)
    begin
        if (reset = '0') then
            port_out_02 <= x"00";
        elsif (clock'event and clock='1') then
            if (address = x"E2" and writen = '1') then
                port_out_02 <= data_in;
            end if;
        end if;
    end process;

    U4 : process (clock, reset)
    begin
        if (reset = '0') then
            port_out_03 <= x"00";
        elsif (clock'event and clock='1') then
            if (address = x"E3" and writen = '1') then
                port_out_03 <= data_in;
            end if;
        end if;
    end process;

    U5 : process (clock, reset)
    begin
        if (reset = '0') then
            port_out_04 <= x"00";
        elsif (clock'event and clock='1') then
            if (address = x"E4" and writen = '1') then
                port_out_04 <= data_in;
            end if;
        end if;
    end process;

    U6 : process (clock, reset)
    begin
        if (reset = '0') then
            port_out_05 <= x"00";
        elsif (clock'event and clock='1') then
            if (address = x"E5" and writen = '1') then
                port_out_05 <= data_in;
            end if;
        end if;
    end process;

    U7 : process (clock, reset)
    begin
        if (reset = '0') then
            port_out_06 <= x"00";
        elsif (clock'event and clock='1') then
            if (address = x"E6" and writen = '1') then
                port_out_06 <= data_in;
            end if;
        end if;
    end process;

    U8 : process (clock, reset)
    begin
        if (reset = '0') then
            port_out_07 <= x"00";
        elsif (clock'event and clock='1') then
            if (address = x"E7" and writen = '1') then
                port_out_07 <= data_in;
            end if;
        end if;
    end process;

    U9 : process (clock, reset)
    begin
        if (reset = '0') then
            port_out_08 <= x"00";
        elsif (clock'event and clock='1') then
            if (address = x"E8" and writen = '1') then
                port_out_08 <= data_in;
            end if;
        end if;
    end process;

    U10 : process (clock, reset)
    begin
        if (reset = '0') then
            port_out_09 <= x"00";
        elsif (clock'event and clock='1') then
            if (address = x"E9" and writen = '1') then
                port_out_09 <= data_in;
            end if;
        end if;
    end process;

    U11 : process (clock, reset)
    begin
        if (reset = '0') then
            port_out_10 <= x"00";
        elsif (clock'event and clock='1') then
            if (address = x"EA" and writen = '1') then
                port_out_10 <= data_in;
            end if;
        end if;
    end process;

    U12 : process (clock, reset)
    begin
        if (reset = '0') then
            port_out_11 <= x"00";
        elsif (clock'event and clock='1') then
            if (address = x"EB" and writen = '1') then
                port_out_11 <= data_in;
            end if;
        end if;
    end process;

    U13 : process (clock, reset)
    begin
        if (reset = '0') then
            port_out_12 <= x"00";
        elsif (clock'event and clock='1') then
            if (address = x"EC" and writen = '1') then
                port_out_12 <= data_in;
            end if;
        end if;
    end process;


    U14 : process (clock, reset)
    begin
        if (reset = '0') then
            port_out_13 <= x"00";
        elsif (clock'event and clock='1') then
            if (address = x"ED" and writen = '1') then
                port_out_13 <= data_in;
            end if;
        end if;
    end process;


    U15 : process (clock, reset)
    begin
        if (reset = '0') then
            port_out_14 <= x"00";
        elsif (clock'event and clock='1') then
            if (address = x"EE" and writen = '1') then
                port_out_14 <= data_in;
            end if;
        end if;
    end process;

    U16 : process (clock, reset)
    begin
        if (reset = '0') then
            port_out_15 <= x"00";
        elsif (clock'event and clock='1') then
            if (address = x"EF" and writen = '1') then
                port_out_15 <= data_in;
            end if;
        end if;
    end process;

end Behavioral;