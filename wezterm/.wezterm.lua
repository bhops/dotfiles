local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.audible_bell = "Disabled"
config.check_for_updates = false
config.font = wezterm.font("JetBrains Mono")
config.font_size = 16

config.color_scheme = "Tokyo Night"

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.8
config.macos_window_background_blur = 30

return config
