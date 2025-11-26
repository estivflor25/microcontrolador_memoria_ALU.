library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memory_test is
    Port ( 
        clock      : in  STD_LOGIC;
        reset      : in  STD_LOGIC;
        writen     : in  STD_LOGIC;
        address    : in  STD_LOGIC_VECTOR (7 downto 0);
        data_in    : in  STD_LOGIC_VECTOR (7 downto 0);
        port_in_00 : in  STD_LOGIC_VECTOR (7 downto 0);
        port_in_01 : in  STD_LOGIC_VECTOR (7 downto 0);
        port_in_02 : in  STD_LOGIC_VECTOR (7 downto 0);
        port_in_03 : in  STD_LOGIC_VECTOR (7 downto 0);
        port_in_04 : in  STD_LOGIC_VECTOR (7 downto 0);
        port_in_05 : in  STD_LOGIC_VECTOR (7 downto 0);
        port_in_06 : in  STD_LOGIC_VECTOR (7 downto 0);
        port_in_07 : in  STD_LOGIC_VECTOR (7 downto 0);
        port_in_08 : in  STD_LOGIC_VECTOR (7 downto 0);
        port_in_09 : in  STD_LOGIC_VECTOR (7 downto 0);
        port_in_10 : in  STD_LOGIC_VECTOR (7 downto 0);
        port_in_11 : in  STD_LOGIC_VECTOR (7 downto 0);
        port_in_12 : in  STD_LOGIC_VECTOR (7 downto 0);
        port_in_13 : in  STD_LOGIC_VECTOR (7 downto 0);
        port_in_14 : in  STD_LOGIC_VECTOR (7 downto 0);
        port_in_15 : in  STD_LOGIC_VECTOR (7 downto 0);
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
        port_out_15: out STD_LOGIC_VECTOR (7 downto 0);
        Display_A_Address: out STD_LOGIC_VECTOR (6 downto 0);  
        Display_B_Address : out STD_LOGIC_VECTOR (6 downto 0);  
        Display_C_Data_in    : out STD_LOGIC_VECTOR (6 downto 0); 
        Display_D_Data_in    : out STD_LOGIC_VECTOR (6 downto 0)   
    );
end memory_test;

architecture arch_memory_test of memory_test is
    component memory
        Port ( address    : in  STD_LOGIC_VECTOR (7 downto 0);
               data_in    : in  STD_LOGIC_VECTOR (7 downto 0);
               writen     : in  STD_LOGIC;
               clock      : in  STD_LOGIC;
               reset      : in  STD_LOGIC;
               port_in_00 : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_01 : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_02 : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_03 : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_04 : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_05 : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_06 : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_07 : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_08 : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_09 : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_10 : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_11 : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_12 : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_13 : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_14 : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_15 : in  STD_LOGIC_VECTOR (7 downto 0);
               data_out   : out STD_LOGIC_VECTOR (7 downto 0);
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
    end component;
    
    component Deco7seg
        Port ( A, B, C, D : in  std_logic;
               display    : out std_logic_vector(6 downto 0));
    end component;
    signal data_out : STD_LOGIC_VECTOR (7 downto 0);
    
begin

    MEMORY_SYSTEM: memory
        port map (
            address    => address,
            data_in    => data_in,
            writen     => writen,
            clock      => clock,
            reset      => reset,
            port_in_00 => port_in_00,
            port_in_01 => port_in_01,
            port_in_02 => port_in_02,
            port_in_03 => port_in_03,
            port_in_04 => port_in_04,
            port_in_05 => port_in_05,
            port_in_06 => port_in_06,
            port_in_07 => port_in_07,
            port_in_08 => port_in_08,
            port_in_09 => port_in_09,
            port_in_10 => port_in_10,
            port_in_11 => port_in_11,
            port_in_12 => port_in_12,
            port_in_13 => port_in_13,
            port_in_14 => port_in_14,
            port_in_15 => port_in_15,
            data_out   => data_out,
            port_out_00 => port_out_00,
            port_out_01 => port_out_01,
            port_out_02 => port_out_02,
            port_out_03 => port_out_03,
            port_out_04 => port_out_04,
            port_out_05 => port_out_05,
            port_out_06 => port_out_06,
            port_out_07 => port_out_07,
            port_out_08 => port_out_08,
            port_out_09 => port_out_09,
            port_out_10 => port_out_10,
            port_out_11 => port_out_11,
            port_out_12 => port_out_12,
            port_out_13 => port_out_13,
            port_out_14 => port_out_14,
            port_out_15 => port_out_15
        );
    DECO_ADDR_HI: Deco7seg
        port map (
            A       => address(7),
            B       => address(6),
            C       => address(5),
            D       => address(4),
            display => Display_A_Address
        );

    DECO_ADDR_LO: Deco7seg
        port map (
            A       => address(3),
            B       => address(2),
            C       => address(1),
            D       => address(0),
            display => Display_B_Address
        );

    DECO_DATA_HI: Deco7seg
        port map (
            A       => data_out(7),
            B       => data_out(6),
            C       => data_out(5),
            D       => data_out(4),
            display => Display_C_Data_in
        );

    DECO_DATA_LO: Deco7seg
        port map (
            A       => data_out(3),
            B       => data_out(2),
            C       => data_out(1),
            D       => data_out(0),
            display => Display_D_Data_in
        );

end arch_memory_test;
