local module = {}

function module.setup(config)
	config.force_reverse_video_cursor = true

	-- kanagawa-dragon
	config.colors = {
		foreground = "#c5c9c5",
		background = "#181616",

		cursor_bg = "#C8C093",
		cursor_fg = "#C8C093",
		cursor_border = "#C8C093",

		selection_fg = "#C8C093",
		selection_bg = "#2D4F67",

		scrollbar_thumb = "#16161D",
		split = "#16161D",

		ansi = {
			"#0D0C0C",
			"#C4746E",
			"#8A9A7B",
			"#C4B28A",
			"#8BA4B0",
			"#A292A3",
			"#8EA4A2",
			"#C8C093",
		},
		brights = {
			"#A6A69C",
			"#E46876",
			"#87A987",
			"#E6C384",
			"#7FB4CA",
			"#938AA9",
			"#7AA89F",
			"#C5C9C5",
		},
	}

	-- kanagawa
	-- config.colors = {
	-- 	foreground = "#dcd7ba",
	-- 	background = "#1f1f28",
	--
	-- 	cursor_bg = "#c8c093",
	-- 	cursor_fg = "#c8c093",
	-- 	cursor_border = "#c8c093",
	--
	-- 	selection_fg = "#c8c093",
	-- 	selection_bg = "#2d4f67",
	--
	-- 	scrollbar_thumb = "#16161d",
	-- 	split = "#16161d",
	--
	-- 	ansi = { "#090618", "#c34043", "#76946a", "#c0a36e", "#7e9cd8", "#957fb8", "#6a9589", "#c8c093" },
	-- 	brights = { "#727169", "#e82424", "#98bb6c", "#e6c384", "#7fb4ca", "#938aa9", "#7aa89f", "#dcd7ba" },
	-- 	indexed = { [16] = "#ffa066", [17] = "#ff5d62" },
	-- }
end

return module
