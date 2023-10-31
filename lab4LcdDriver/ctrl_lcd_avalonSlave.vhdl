LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ctrl_lcd_avalonSlave IS
  PORT (
    Clock : IN std_logic;
    Reset : IN std_logic;
    -- Avalon-MM slave interface definition
    slave_address      : IN  std_logic_vector(1 DOWNTO 0);
    slave_cs           : IN  std_logic;
    slave_we           : IN  std_logic;
    slave_rd           : IN  std_logic;
    slave_write_data   : IN  std_logic_vector(31 DOWNTO 0);
    slave_read_data    : OUT std_logic_vector(31 DOWNTO 0);
    slave_wait_request : OUT std_logic;
    -- External interface to LCD panel definition
    ChipSelectBar  : OUT   std_logic;
    DataCommandBar : OUT   std_logic;
    WriteBar       : OUT   std_logic;
    ReadBar        : OUT   std_logic;
    ResetBar       : OUT   std_logic;
    IM0            : OUT   std_logic;
    DataBus        : INOUT std_logic_vector(15 DOWNTO 0));
END ctrl_lcd_avalonSlave;

--------------------------------------------------------------------------------
-- Register model:
--
-- 00  write: Write a command to LCD
--     read :  Read a command from LCD
--
-- 01  write: Write data to LCD
--     read : Read data from LCD
--
-- 10  r/w  : Control register
--            bit 0  => Select 0 => Sixteen bit transfer
--                      Select 1 => Eight bit transfer
--            bit 1  => Busy flag (read only)
--                      Reset LCD Display (write only)
--            others => 0
--------------------------------------------------------------------------------

ARCHITECTURE rtl OF ctrl_lcd_avalonSlave IS

  TYPE LCD_READ_TYPE IS (IDLE, WAITBUSY, INITREAD, WAITREAD, RELEASE);

  COMPONENT SendReceiveInterface IS
    PORT (
      -- Internal interface definition
      Clock                 : IN    std_logic;
      Reset                 : IN    std_logic;
      ResetDisplay          : IN    std_logic;
      StartSendReceive      : IN    std_logic;
      CommandBarData        : IN    std_logic;
      EightBitSixteenBitBar : IN    std_logic;
      WriteReadBar          : IN    std_logic;
      DataToSend            : IN    std_logic_vector(15 DOWNTO 0);
      DataReceived          : OUT   std_logic_vector(15 DOWNTO 0);
      busy                  : OUT   std_logic;
      -- External interface to LCD panel definition
      ChipSelectBar         : OUT   std_logic;
      DataCommandBar        : OUT   std_logic;
      WriteBar              : OUT   std_logic;
      ReadBar               : OUT   std_logic;
      ResetBar              : OUT   std_logic;
      IM0                   : OUT   std_logic;
      DataBus               : INOUT std_logic_vector(15 DOWNTO 0));
  END COMPONENT;

  SIGNAL s_WriteReadBar     : std_logic;
  SIGNAL s_StartSendReceive : std_logic;
  SIGNAL s_CommandBarData   : std_logic;
  SIGNAL s_busy             : std_logic;
  SIGNAL s_control_reg      : std_logic_vector(31 DOWNTO 0);
  SIGNAL s_control_next     : std_logic_vector(31 DOWNTO 0);
  SIGNAL s_LCD_data_out     : std_logic_vector(15 DOWNTO 0);
  SIGNAL s_current_state    : LCD_READ_TYPE;
  SIGNAL s_next_state       : LCD_READ_TYPE;
  SIGNAL s_reset_display    : std_logic;

BEGIN

--------------------------------------------------------------------------------
-- In this section the avalon slave signals are defined
--------------------------------------------------------------------------------

  -- TODO...


--------------------------------------------------------------------------------
-- In this section the LCD-read state machine is defined
--------------------------------------------------------------------------------

  -- TODO...


--------------------------------------------------------------------------------
--- In this section the control register is defined
--------------------------------------------------------------------------------

  -- TODO...


--------------------------------------------------------------------------------
--- In this section all control signals are defined
--------------------------------------------------------------------------------

  -- TODO...


--------------------------------------------------------------------------------
--- In this section all components are connected
--------------------------------------------------------------------------------

  interface : SendReceiveInterface
    PORT MAP (
      Clock                 => Clock,
      Reset                 => Reset,
      ResetDisplay          => s_reset_display,
      StartSendReceive      => s_StartSendReceive,
      CommandBarData        => s_CommandBarData,
      EightBitSixteenBitBar => s_control_reg(0),
      WriteReadBar          => s_WriteReadBar,
      DataToSend            => slave_write_data(15 DOWNTO 0),
      DataReceived          => s_LCD_data_out,
      busy                  => s_busy,
      -- Here the external LCD-panel signals are defined
      ChipSelectBar         => ChipSelectBar,
      DataCommandBar        => DataCommandBar,
      WriteBar              => WriteBar,
      ReadBar               => ReadBar,
      ResetBar              => ResetBar,
      IM0                   => IM0,
      DataBus               => DataBus);

END ARCHITECTURE rtl;
