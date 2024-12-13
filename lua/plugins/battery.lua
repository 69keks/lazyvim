return {
  {
    "justinhj/battery.nvim",
    -- enabled = false,
    lazy = true,
    opts = {
      update_rate = 30,
      show_status_when_no_battery = true,
      show_plugged_icon = true,
      show_unplugged_icon = true,
      show_percent = true,
      vertical_icons = true,
      multiple_battery_selection = 0,
    },
  },
}
