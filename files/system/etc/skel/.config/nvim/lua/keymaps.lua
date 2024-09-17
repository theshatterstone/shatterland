-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- SPC-SPC for commands, like M-X in Emacs
vim.keymap.set('n', '<leader><leader>', ':', { desc = '[:] Command Mode' })

-- Diagnostic keymaps
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- ThePrimeagen Keymaps to Move Highlighted line up or down
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move visual line Up' })
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move visual line Down' })

--
-- ThePrimeagen Keymaps to keep cursor at center of screen (and other stuff)
--

-- Page Jumps
vim.keymap.set('n', '<C-u', '<C-u>zz', { desc = 'Page Jump Up with cursor in the middle' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Page Jump Down with cursor in the middle' })

-- Next/Prev Search Term
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Next Search Term with cursor in the middle' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Prev Search Term with cursor in the middle' })

-- greatest remap ever (to keep currently copied text in the buffer when pasting over a visual region)
vim.keymap.set('x', '<leader>p', [["_dP]], { desc = 'Keep Current text in buffer instead of replacing with visual region' })

-- next greatest remap ever : asbjornHaland; <leader>y or d will copy to system
-- clipboard instead of vim's, allowing the usage of both simultaneously
-- vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
-- vim.keymap.set('n', '<leader>Y', [["+]])
--
-- vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]])

-- Keymaps for moving through errors
vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

-- Replace current word (using sed)
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make current file executable
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })

--
-- More Navigational Keep-the-cursor-in-the-middle commands
--

-- When Moving to start/end of line (Means I can just use 0 to get cursor back in the middle)
vim.keymap.set('n', '0', '0zz', { desc = 'Move to start of line with cursor in the middle' })
vim.keymap.set('n', '$', '$zz', { desc = 'Move to end of line with cursor in the middle' })

-- Beginning or End of File
vim.keymap.set('n', 'gg', 'ggzz', { desc = 'Move to beginning of file with cursor in the middle' })
vim.keymap.set('n', 'G', 'Gzz', { desc = 'Move to end of file with cursor in the middle' })

-- Prev/Next Sentence
vim.keymap.set('n', '(', '(zz', { desc = 'Move to previous sentence with cursor in the middle' })
vim.keymap.set('n', ')', ')zz', { desc = 'Move to next sentence with cursor in the middle' })

-- Prev/Next Paragraph
vim.keymap.set('n', '{', '{zz', { desc = 'Move to previous paragraph with cursor in the middle' })
vim.keymap.set('n', '}', '}zz', { desc = 'Move to next paragraph with cursor in the middle' })

-- J and K
vim.keymap.set('n', 'j', 'jzz', { desc = 'Move down a line with cursor in the middle' })
vim.keymap.set('n', 'k', 'kzz', { desc = 'Move up a line with cursor in the middle' })

-- Next/Prev Block (function/class)
vim.keymap.set('n', ']b', ']bzz', { desc = 'Move to next block with cursor in the middle' })
vim.keymap.set('n', '[b', '[bzz', { desc = 'Move to previous block with cursor in the middle' })

local function close_buffer_and_go_to_dashboard()
  local buffers = vim.fn.getbufinfo { buflisted = true }
  if #buffers == 1 then
    -- If only one buffer is left, switch to the dashboard
    vim.cmd 'Dashboard'
  else
    -- Otherwise, just close the current buffer
    vim.cmd 'bd'
  end
end

-- Buffer and Splits Management
vim.keymap.set('n', '<leader>w', '<C-w>', { desc = 'Window/Splits management' })
-- vim.keymap.set('n', '<leader>w', '<C-w>', { desc = 'Window/Splits management' })
-- vim.keymap.set('n', '<leader>bk', ':bd<CR>', { desc = 'Kill Buffer' })
vim.keymap.set('n', '<leader>bk', close_buffer_and_go_to_dashboard, { desc = 'Kill Buffer' })
vim.keymap.set('n', '<leader>bn', ':bn<CR>', { desc = 'Next Buffer' })
vim.keymap.set('n', '<leader>bp', ':bp<CR>', { desc = 'Prev Buffer' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
