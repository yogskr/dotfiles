return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local custom_horizon = require("lualine.themes.horizon")
		local colors = {
			fujiWhite = "#dcd7ba", -- default fg
			autumnRed = "#c34043", -- normal a bg
			dragonBlue = "#658594", -- insert a bg
			autumnGreen = "#76946a", -- command a bg
			autumnYellow = "#dca561", -- visual a bg
			samuraiRed = "#e82424", -- replace a bg
			sumiInk0 = "#16161d", -- default c bg
			sumiInk1 = "#363646", -- inactive default bg
			sumiInk2 = "#2a2a37", -- default b bg
			sumiInk3 = "#54546d", -- inactive default fg
		}

		-- normal
		custom_horizon.normal.a.fg = colors.fujiWhite
		custom_horizon.normal.a.bg = colors.autumnRed
		custom_horizon.normal.b.fg = colors.fujiWhite
		custom_horizon.normal.b.bg = colors.sumiInk2
		custom_horizon.normal.c.fg = colors.fujiWhite
		custom_horizon.normal.c.bg = colors.sumiInk0

		-- insert
		custom_horizon.insert.a.fg = colors.fujiWhite
		custom_horizon.insert.a.bg = colors.dragonBlue
		custom_horizon.insert.b.fg = colors.fujiWhite
		custom_horizon.insert.b.bg = colors.sumiInk2
		custom_horizon.insert.c.fg = colors.fujiWhite
		custom_horizon.insert.c.bg = colors.sumiInk0

		-- command
		custom_horizon.command.a.fg = colors.fujiWhite
		custom_horizon.command.a.bg = colors.autumnGreen
		custom_horizon.command.b.fg = colors.fujiWhite
		custom_horizon.command.b.bg = colors.sumiInk2
		custom_horizon.command.c.fg = colors.fujiWhite
		custom_horizon.command.c.bg = colors.sumiInk0

		-- visual
		custom_horizon.visual.a.fg = colors.fujiWhite
		custom_horizon.visual.a.bg = colors.autumnYellow
		custom_horizon.visual.b.fg = colors.fujiWhite
		custom_horizon.visual.b.bg = colors.sumiInk2
		custom_horizon.visual.c.fg = colors.fujiWhite
		custom_horizon.visual.c.bg = colors.sumiInk0

		-- inactive
		custom_horizon.inactive.a.fg = colors.sumiInk3
		custom_horizon.inactive.a.bg = colors.sumiInk1
		custom_horizon.inactive.b.fg = colors.sumiInk3
		custom_horizon.inactive.b.bg = colors.sumiInk1
		custom_horizon.inactive.c.fg = colors.sumiInk3
		custom_horizon.inactive.c.bg = colors.sumiInk1

		require("lualine").setup({
			options = {
				theme = custom_horizon,
			},
		})
	end,
}
