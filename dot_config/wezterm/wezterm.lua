local wezterm = require("wezterm")

local config = wezterm.config_builder()

require("theme").setup(config)
require("keys").setup(config)

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 19

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

return config
