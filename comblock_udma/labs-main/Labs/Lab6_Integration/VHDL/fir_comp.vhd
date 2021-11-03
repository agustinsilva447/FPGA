----------------------------------------------------------------------------------
-- Company: ICTP
-- Engineer: L. G. Garcia  
-- 
-- Create Date: 30.06.2021 11:56:00
-- Design Name: comp
-- Module Name: comp - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- It will compare the output from three FIR filters and select the particle type or noise
-- depending a threshold.
-- This block is designed for RISING EDGE PULSES
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fir_comp is
    Generic(N : integer :=32;
        satthr : integer :=200;
        FIRWIDTH : integer :=32;
        DWIDTH : integer :=16);
    Port(
        CLK : in STD_LOGIC;
        RSTN : in STD_LOGIC;

        R : in SIGNED(FIRWIDTH -1 downto 0); --FIR Threashold Reference setup
        THR : in UNSIGNED(DWIDTH -1 downto 0); --Threashold setup
        N4SAT : in UNSIGNED(DWIDTH -1 downto 0); --Second trigger threashold setup
        
        
        s : in UNSIGNED( DWIDTH -1 downto 0); --signal
        f1 : in SIGNED( FIRWIDTH -1 downto 0); --fir 1 --c1 pulses
        f2 : in SIGNED( FIRWIDTH -1 downto 0); --fir 2 --c2 pulses

        sat : out std_logic;
        peak : out unsigned(DWIDTH - 1 downto 0);
        result : out STD_LOGIC_VECTOR(1 downto 0);
        rdy  : out STD_LOGIC
    );
end fir_comp;

architecture Behavioral of fir_comp is

signal f1hold, f2hold  : signed (FIRWIDTH -1 downto 0);
signal f1peak,f2peak  : signed (FIRWIDTH -1 downto 0);
signal phold, pk : unsigned (DWIDTH -1 downto 0); --above threashold signal

signal rsig : std_logic_vector(1 downto 0);

signal csat :unsigned(31 downto 0); -- count same value
signal sat_sig : std_logic;


signal count : unsigned (DWIDTH -1 DOWNTO 0); --count length of the pulse


type state is (rsts, idle, spk, rout);
signal cstate, nstate : state;


begin

    --SYNC PROCESS
    process(CLK, RSTN)
    begin
        if RSTN ='0' then
            cstate<=rsts;
        elsif rising_edge(CLK) then
            cstate<=nstate;
        end if;
    end process;    

    --NEXT STATE PROCESS
    process(cstate, CLK, THR)
    begin
        case cstate is
            when rsts =>
                nstate<=idle;
            when idle => --idle state
                if s>=THR then
                    nstate<=spk;
                else
                    nstate<=idle;
                end if;
            when spk => --search for peak
                if s<THR then
                    nstate<=rout;
                else
                    nstate<=spk;
                end if;
            when rout => --result output
                nstate<=idle;
            when others=>
                nstate<=rsts;
        end case;
    end process;


-- Peak hold logic   
process(CLK,RSTN)
    begin
        if RSTN='0' then
           f1hold<=(others=>'0');
        elsif rising_edge(CLK) then
            if f1>f1peak and cstate = spk then
                f1hold<=f1;
            else 
                f1hold<=f1peak;
            end if;
        end if;              
end process;

process(CLK,RSTN)
    begin
        if RSTN='0' then
           f2hold<=(others=>'0');
        elsif rising_edge(CLK) then
            if f2>f2peak and cstate = spk then
                f2hold<=f2;
            else 
                f2hold<=f2peak;
            end if;
        end if;              
end process;

process(CLK,RSTN)
    begin
        if RSTN='0' then
           phold<=(others=>'0');
        elsif rising_edge(CLK) then
            if s>pk and cstate = spk then
               phold<=s;
            else 
                phold<=pk;
            end if;
        end if;              
end process;


rsig<= "01" when f1peak>R and f1peak>f2peak  else
       "10" when f2peak>R and f2peak>f1peak  else 
       "11";

process(cstate, N4SAT,  CLK)
    begin
        if cstate = rsts then
            sat_sig<='0';
            csat<=(others =>'0');
        elsif cstate = spk then              
            if csat >= N4SAT then
                sat_sig<='1';
            end if;
            if  s > satthr  and csat< N then
                csat<=csat+1;
            elsif csat>=N then
                csat<=csat;
            end if;
        elsif cstate = idle then
            sat_sig<='0';
            csat<=(others =>'0');
        elsif cstate = rout then
            sat_sig<=sat_sig;
        else
            csat<=(others =>'0');
        end if;
    end process;


    --OUTPUT DECODE
    process(cstate, CLK)
    begin 
     case cstate is
        when rsts =>
            rdy<='0';
            f1peak <=(others=>'0');
            f2peak <=(others=>'0');
            pk  <=(others=>'0');
            sat<='0';
        when idle =>
            rdy<='0';
            f1peak <=(others=>'0');
            f2peak <=(others=>'0');
            pk  <=(others=>'0');
            sat<='0';
        when spk =>
            rdy<='0';
            f1peak<=f1hold;
            f2peak<=f2hold;
            pk<=phold;
            sat<='0';
        when rout =>
            rdy<='1';
            result<=rsig;
            sat<=sat_sig;
        when others =>
        rdy<='0';
        f1peak <=(others=>'0');
        f2peak <=(others=>'0');
        pk  <=(others=>'0');
        end case;
    end process;

    peak<=pk;


end Behavioral;
