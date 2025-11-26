library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity alu_test is
    Port ( 
        clock      : in  STD_LOGIC;                   
        address    : in  STD_LOGIC_VECTOR (7 downto 0);  
        data_in    : in  STD_LOGIC_VECTOR (7 downto 0);  
        writen     : in  STD_LOGIC;                   
		  port_out_00: out STD_LOGIC_VECTOR (7 downto 0); 
        Display_A_Address : out STD_LOGIC_VECTOR (6 downto 0);  
        Display_B_Address : out STD_LOGIC_VECTOR (6 downto 0);  
        Display_C_Data_in  : out STD_LOGIC_VECTOR (6 downto 0);  
        Display_D_Data_in   : out STD_LOGIC_VECTOR (6 downto 0)
    );
end alu_test;

architecture arch_alu_test of alu_test is
    component alu
        Port ( 
            A : in unsigned(7 downto 0);
            B : in unsigned(7 downto 0);
            ALU_Sel : in std_logic;
            Result : out unsigned(7 downto 0);
            NZVC : out std_logic_vector(3 downto 0)
        );
    end component;
    component Deco7seg
        Port (
            A, B, C, D : in  std_logic;
            display    : out std_logic_vector(6 downto 0)
        );
    end component;
    signal A_input : unsigned(7 downto 0);
    signal B_input : unsigned(7 downto 0);
    signal ALU_result : unsigned(7 downto 0);
    signal NZVC_flags : std_logic_vector(3 downto 0);
    signal result_slv : std_logic_vector(7 downto 0);
    signal B_slv : std_logic_vector(7 downto 0);
    
begin
    A_input <= unsigned(address);
    B_input <= unsigned(data_in);
    B_slv <= data_in;
    

    alu_inst: alu
        port map (
            A => A_input,
            B => B_input,
            ALU_Sel => writen, 
            Result => ALU_result,
            NZVC => NZVC_flags
        );
    result_slv <= std_logic_vector(ALU_result);

    port_out_00 <= "0000" & NZVC_flags;
    

    DECO_B_HI: Deco7seg
        port map (
            A       => B_slv(7),
            B       => B_slv(6),
            C       => B_slv(5),
            D       => B_slv(4),
            display => Display_A_Address
        );
    
    -- Display para nibble bajo de B (bits 3-0)
    DECO_B_LO: Deco7seg
        port map (
            A       => B_slv(3),
            B       => B_slv(2),
            C       => B_slv(1),
            D       => B_slv(0),
            display => Display_B_Address
        );
    
    DECO_RESULT_HI: Deco7seg
        port map (
            A       => result_slv(7),
            B       => result_slv(6),
            C       => result_slv(5),
            D       => result_slv(4),
            display => Display_C_Data_in
        );
    

    DECO_RESULT_LO: Deco7seg
        port map (
            A       => result_slv(3),
            B       => result_slv(2),
            C       => result_slv(1),
            D       => result_slv(0),
            display => Display_D_Data_in
        );

end arch_alu_test;