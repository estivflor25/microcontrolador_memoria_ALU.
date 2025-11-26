library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity memory is
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
end memory;

architecture arch_memory of memory is

    component rom_128x8_sync
        Port ( address : in  STD_LOGIC_VECTOR (7 downto 0);
               clock   : in  STD_LOGIC;
               data_out: out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    component rw_96x8_sync
        Port ( address  : in  STD_LOGIC_VECTOR (7 downto 0);
               data_in  : in  STD_LOGIC_VECTOR (7 downto 0);
               writen   : in  STD_LOGIC;
               clock    : in  STD_LOGIC;
               data_out : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    component output_ports
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
    end component;
    
    component data_bus_mux
        Port ( address     : in  STD_LOGIC_VECTOR (7 downto 0);
               rom_data_out: in  STD_LOGIC_VECTOR (7 downto 0);
               rw_data_out : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_00  : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_01  : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_02  : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_03  : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_04  : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_05  : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_06  : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_07  : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_08  : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_09  : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_10  : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_11  : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_12  : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_13  : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_14  : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in_15  : in  STD_LOGIC_VECTOR (7 downto 0);
               data_out    : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    

    signal rom_data_out : STD_LOGIC_VECTOR (7 downto 0);
    signal rw_data_out  : STD_LOGIC_VECTOR (7 downto 0);
    
begin


    ROM_MEMORY: rom_128x8_sync
        port map (
            address  => address,
            clock    => clock,
            data_out => rom_data_out
        );
    RW_MEMORY: rw_96x8_sync
        port map (
            address  => address,
            data_in  => data_in,
            writen   => writen,
            clock    => clock,
            data_out => rw_data_out
        );

    OUTPUT_PORTS_COMPONENT: output_ports
        port map (
            address     => address,
            data_in     => data_in,
            writen      => writen,
            clock       => clock,
            reset       => reset,
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
    
    DATA_BUS_MULTIPLEXER: data_bus_mux
        port map (
            address      => address,
            rom_data_out => rom_data_out,
            rw_data_out  => rw_data_out,
            port_in_00   => port_in_00,
            port_in_01   => port_in_01,
            port_in_02   => port_in_02,
            port_in_03   => port_in_03,
            port_in_04   => port_in_04,
            port_in_05   => port_in_05,
            port_in_06   => port_in_06,
            port_in_07   => port_in_07,
            port_in_08   => port_in_08,
            port_in_09   => port_in_09,
            port_in_10   => port_in_10,
            port_in_11   => port_in_11,
            port_in_12   => port_in_12,
            port_in_13   => port_in_13,
            port_in_14   => port_in_14,
            port_in_15   => port_in_15,
            data_out     => data_out
        );

end arch_memory;