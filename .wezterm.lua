-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
	window:gui_window():toggle_fullscreen()
end)

-- This is where you actually apply your config choices

-- For example, changing the color scheme:


-- and finally, return the configuration to wezterm
return {
	color_scheme = 'catppuccin-frappe',
	font = wezterm.font 'FiraCode Nerd Font',
	font_size = 20,
	keys = {
		{ action = wezterm.action.ActivateCommandPalette, mods = 'CTRL|SHIFT', key =     'P' },
		{ action = wezterm.action.CopyTo    'Clipboard' , mods = 'CTRL|SHIFT', key =     'C' },
		{ action = wezterm.action.DecreaseFontSize      , mods =       'CTRL', key =     '-' },
		{ action = wezterm.action.IncreaseFontSize      , mods =       'CTRL', key =     '=' },
		{ action = wezterm.action.Nop                   , mods =        'ALT', key = 'Enter' },
		{ action = wezterm.action.PasteFrom 'Clipboard' , mods = 'CTRL|SHIFT', key =     'V' },
		{ action = wezterm.action.ResetFontSize         , mods =       'CTRL', key =     '0' },
		{ action = wezterm.action.ToggleFullScreen      ,                      key =   'F11' },
	  },
	hide_mouse_cursor_when_typing = true,
	scrollback_lines = 10000,
	show_update_window = true,
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	hide_tab_bar_if_only_one_tab = true,
	use_dead_keys = false,
	default_cwd = "C:\\Users\\wojte\\Projects",
}