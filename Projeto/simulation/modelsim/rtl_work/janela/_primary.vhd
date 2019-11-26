library verilog;
use verilog.vl_types.all;
entity janela is
    port(
        linha           : in     vl_logic_vector(9 downto 0);
        coluna          : in     vl_logic_vector(9 downto 0);
        mask            : out    vl_logic
    );
end janela;
