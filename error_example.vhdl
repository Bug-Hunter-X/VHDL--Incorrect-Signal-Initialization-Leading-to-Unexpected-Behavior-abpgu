```vhdl
ENTITY error_example IS
  PORT (
    clk : IN  STD_LOGIC;
    reset : IN STD_LOGIC;
    data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END ENTITY;

ARCHITECTURE behavioral OF error_example IS

  SIGNAL temp : STD_LOGIC_VECTOR(7 DOWNTO 0) := x"00"; -- Incorrect initialization

BEGIN

  PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      temp <= x"00";
    ELSIF rising_edge(clk) THEN
      temp <= data_in;
      data_out <= temp;
    END IF;
  END PROCESS;

END ARCHITECTURE;
```