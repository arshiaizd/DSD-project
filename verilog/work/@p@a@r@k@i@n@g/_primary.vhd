library verilog;
use verilog.vl_types.all;
entity PARKING is
    port(
        clk             : in     vl_logic;
        car_entered     : in     vl_logic;
        is_uni_car_entered: in     vl_logic;
        car_exited      : in     vl_logic;
        is_uni_car_exited: in     vl_logic;
        uni_parked_car  : out    vl_logic_vector(10 downto 0);
        parked_car      : out    vl_logic_vector(10 downto 0);
        uni_vacated_space: out    vl_logic_vector(10 downto 0);
        vacated_space   : out    vl_logic_vector(10 downto 0);
        uni_is_vacated_space: out    vl_logic;
        is_vacated_space: out    vl_logic;
        valid           : out    vl_logic
    );
end PARKING;
