library verilog;
use verilog.vl_types.all;
entity conc is
    port(
        a               : in     vl_logic_vector(9 downto 0);
        b               : in     vl_logic_vector(9 downto 0);
        c               : out    vl_logic_vector(14 downto 0)
    );
end conc;
