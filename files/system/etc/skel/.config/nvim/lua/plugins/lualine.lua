-- Plugins
return {
    "nvim-lualine/lualine.nvim",
    -- dependencies = {
    --   "nvim-tree/nvim-web-devicons",
    -- },
  config = function ()
	local shatterland = require("lualine.themes.material")

	-- -- Custom colours
    -- The format is themename.mode.<part of status line>.fg/bg
    -- where <part of status line refers to parts a b and c in the left and parts x y and z in the right.
	shatterland.normal.a.fg = "#282c34"
	shatterland.normal.a.bg = "#51afef"
	shatterland.normal.b.fg = "#abb2bf"
	shatterland.normal.b.bg = "#282c34"
	shatterland.normal.c.fg = "#abb2bf"
	shatterland.normal.c.bg = "#1c1f24"

	shatterland.insert.a.fg = "#282c34"
	shatterland.insert.a.bg = "#41d4fa"
	shatterland.insert.b.fg = "#abb2bf"
	shatterland.insert.b.bg = "#282c34"

	shatterland.visual.a.fg = "#282c34"
	shatterland.visual.a.bg = "#41fdfe"
	shatterland.visual.b.fg = "#abb2bf"
	shatterland.visual.b.bg = "#282c34"

	shatterland.replace.a.fg = "#282c34"
	shatterland.replace.a.bg = "#0f7ecc"
	shatterland.replace.b.fg = "#abb2bf"
	shatterland.replace.b.bg = "#282c34"

	shatterland.inactive.a.fg = "#282c34"
	shatterland.inactive.a.bg = "#51afef"
	shatterland.inactive.b.fg = "#abb2bf"
	shatterland.inactive.b.bg = "#282c34"
	shatterland.inactive.c.fg = "#abb2bf"
	shatterland.inactive.c.bg = "#1c1f24"

    require('lualine').setup({

    options = {
      theme = shatterland
    }
    })
  end
}
