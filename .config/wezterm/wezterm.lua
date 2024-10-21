local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.enable_wayland = true

--color schemes
config.color_schemes = require("ThemeManager")
config.color_scheme = "OneDark"

--Tab Bar
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false

config.font = wezterm.font "Fira Code Medium"
config.font_size = 10

config.default_cursor_style = "BlinkingBar"

config.window_background_opacity = 1.0
config.text_background_opacity = 1.0

config.window_padding = {
    top = "1cell",
    right = "3cell",
    bottom = "1cell",
    left = "3cell"
}
config.inactive_pane_hsb = {
    saturation = 0.9,
    brightness = 0.8,
}

return config
