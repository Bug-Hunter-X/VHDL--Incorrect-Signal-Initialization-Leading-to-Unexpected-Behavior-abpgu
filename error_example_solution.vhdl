```vhdl
ENTITY error_example_solution IS
  PORT (
    clk : IN  STD_LOGIC;
    reset : IN STD_LOGIC;
    data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END ENTITY;

ARCHITECTURE behavioral OF error_example_solution IS

  SIGNAL temp : STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000"; -- Correct initialization

BEGIN

  PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      temp <= "00000000";
    ELSIF rising_edge(clk) THEN
      temp <= data_in;
      data_out <= temp;
    END IF;
  END PROCESS;

END ARCHITECTURE;
```