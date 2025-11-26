library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity alu is
    Port ( 
        A : in unsigned(7 downto 0);           
        B : in unsigned(7 downto 0);          
        ALU_Sel : in std_logic;                 
        Result : out unsigned(7 downto 0);      
        NZVC : out std_logic_vector(3 downto 0) 
    );
end alu;

architecture arch_alu of alu is
    signal Sum_uns : unsigned(8 downto 0);  -- 9 bits para detectar carry
    signal Result_temp : unsigned(7 downto 0);
    signal N_flag : std_logic;  -- Negative
    signal Z_flag : std_logic;  -- Zero
    signal V_flag : std_logic;  -- Overflow
    signal C_flag : std_logic;  -- Carry
begin

    process(A, B, ALU_Sel)
    begin
        if (ALU_Sel = '0') then 
            Sum_uns <= unsigned('0' & A) + unsigned('0' & B);
            Result_temp <= Sum_uns(7 downto 0);
            N_flag <= Sum_uns(7);
            if (Sum_uns(7 downto 0) = x"00") then
                Z_flag <= '1';
            else
                Z_flag <= '0';
            end if;
            if ((A(7)='0' and B(7)='0' and Sum_uns(7)='1') or
                (A(7)='1' and B(7)='1' and Sum_uns(7)='0')) then
                V_flag <= '1';
            else
                V_flag <= '0';
            end if;
            C_flag <= Sum_uns(8);
            
        else 
            Sum_uns <= unsigned('0' & A) - unsigned('0' & B);
            Result_temp <= Sum_uns(7 downto 0);
            N_flag <= Sum_uns(7);
            if (Sum_uns(7 downto 0) = x"00") then
                Z_flag <= '1';
            else
                Z_flag <= '0';
            end if;
            if ((A(7)='0' and B(7)='1' and Sum_uns(7)='1') or
                (A(7)='1' and B(7)='0' and Sum_uns(7)='0')) then
                V_flag <= '1';
            else
                V_flag <= '0';
            end if;
            if (A < B) then
                C_flag <= '1';
            else
                C_flag <= '0';
            end if;
            
        end if;
    end process;
    Result <= Result_temp;
    NZVC <= N_flag & Z_flag & V_flag & C_flag;

end arch_alu;