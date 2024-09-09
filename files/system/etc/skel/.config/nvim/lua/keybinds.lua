print "TODO: .config/nvim/lua/keybinds.lua for more parity with Emacs"
local keymap = vim.keymap
local api = vim.api
local uv = vim.uv


-- keymap.set({ "n", "i", "x" }, , ":")
-- keymap.set({ "n", "i", "x" }, , ":")
-- keymap.set({ "n", "i", "x" }, , ":")
-- keymap.set({ "n", "i", "x" }, , ":")
-- keymap.set({ "n", "i", "x" }, , ":")
-- keymap.set({ "n", "i", "x" }, , ":")


keymap.set('n', '<leader><leader>', ':', { noremap = true, silent = true })
keymap.set('n', '<Alt>x', ':', { noremap = true, silent = true })
-- keymap.set('n', '<M-x>', ':', { noremap = true, silent = true })

local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent = true })
end

-- Mimic shell movements
map("i", "<C-E>", "<ESC>A")
map("i", "<C-A>", "<ESC>I")

-- Load recent sessions
map("n", "<leader>sl", "<CMD>SessionLoad<CR>")

-- Keybindings for telescope
map("n", "<leader>fr", "<CMD>Telescope oldfiles<CR>")
map("n", "<leader>ff", "<CMD>Telescope find_files<CR>")
map("n", "<leader>fb", "<CMD>Telescope file_browser<CR>")
map("n", "<leader>fw", "<CMD>Telescope live_grep<CR>")
map("n", "<leader>ht", "<CMD>Telescope colorscheme<CR>")

-- Other binds
map('n', '<leader><leader>', ':')
