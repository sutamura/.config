-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

--自動で更新
config.automatically_reload_config = true

--shellをPowershell7sに
config.default_prog = { 'pwsh.exe' }

-- ime
config.use_ime = true

-- For example, changing the color scheme:
config.color_scheme = 'Catppuccin Macchiato (Gogh)'

-- フォントサイズの設定
config.font_size = 16
config.font = wezterm.font 'HackGen Console'

-- 背景透過
config.window_background_opacity = 0.8

-- 起動時の行と列
config.initial_cols = 110
config.initial_rows = 40

-- ペースト時に改行をはさまないように
config.canonicalize_pasted_newlines = "None"

-- and finally, return the configuration to wezterm
return config