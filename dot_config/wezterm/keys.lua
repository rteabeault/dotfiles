local wezterm = require("wezterm")
local action = wezterm.action

local module = {}

-- module.modifier_key = wezterm.target_triple:find("windows") and "SHIFT|CTRL" or "SHIFT|SUPER"
module.modifier_key = "SHIFT|SUPER"

function module.setup(config)
	-- config.disable_default_key_bindings = true
	config.keys = {
		-- Splits
		{ mods = module.modifier_key, key = "|", action = action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
		{ mods = module.modifier_key, key = "-", action = action.SplitVertical({ domain = "CurrentPaneDomain" }) },
		-- Font Size
		{ mods = module.modifier_key, key = "(", action = action.DecreaseFontSize },
		{ mods = module.modifier_key, key = ")", action = action.IncreaseFontSize },
		-- Move Tabs
		{ mods = module.modifier_key, key = ">", action = action.MoveTabRelative(1) },
		{ mods = module.modifier_key, key = "<", action = action.MoveTabRelative(-1) },
		-- Clipboard
		{ mods = module.modifier_key, key = "c", action = action.CopyTo("Clipboard") },
		{ mods = module.modifier_key, key = "Space", action = action.QuickSelect },
		{ mods = module.modifier_key, key = "X", action = action.ActivateCopyMode },
		{ mods = module.modifier_key, key = "f", action = action.Search("CurrentSelectionOrEmptyString") },
		{ mods = module.modifier_key, key = "v", action = action.PasteFrom("Clipboard") },
		-- Clears the scrollback and viewport, and then sends CTRL-L to ask the
		-- shell to redraw its prompt
		{
			mods = module.modifier_key,
			key = "k",
			action = action.Multiple({
				action.ClearScrollback("ScrollbackAndViewport"),
				action.SendKey({ key = "L", mods = "CTRL" }),
			}),
		},
		{ mods = module.modifier_key, key = "p", action = action.ActivateCommandPalette },
	}
end

return module
