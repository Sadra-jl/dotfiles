local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.enable_wayland = true
config.color_schemes = require("ThemeManager")
config.color_scheme = "OneDark"
config.hide_tab_bar_if_only_one_tab = true

return config
