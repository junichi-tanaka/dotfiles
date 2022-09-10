local wezterm = require 'wezterm';
return {
  default_prog = {"/opt/homebrew/bin/fish", "-l"},

  color_scheme = "GitHub Dark",
  window_background_opacity = 0.9,
  initial_rows = 48,
  initial_cols = 120,

  use_fancy_tab_bar = true,
  tab_bar_at_bottom = true,

  font = wezterm.font("JetBrains Mono"),
  font_size = 12.0,
  line_height = 1.1,

  check_for_updates = true,
  check_for_updates_interval_seconds = 86400,

  quick_select_patterns = {
    "[0-9a-zA-Z]{7,40}",
  },

  keys = {
    {key="p", mods="SUPER|SHIFT", action=wezterm.action{
        ActivateTabRelative=-1
    }},
    {key="n", mods="SUPER|SHIFT", action=wezterm.action{
        ActivateTabRelative=1
    }},
    {key="Enter", mods="SUPER", action="QuickSelect"},
  }
}
