-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup({
  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- NOTE: Plugins can also be added by using a table,
  -- with the first argument being the link and the following
  -- keys can be used to configure plugin behavior/loading/etc.
  --
  -- Use `opts = {}` to force a plugin to be loaded.
  --

  -- modular approach: using `require 'path/name'` will
  -- include a plugin definition from file lua/path/name.lua

  require 'kickstart/plugins/autopairs',

  require 'kickstart/plugins/conform',

  require 'kickstart/plugins/dashboard',

  require 'kickstart/plugins/debug',

  require 'kickstart/plugins/gitsigns',

  require 'kickstart/plugins/golang',

  require 'kickstart/plugins/indent_line',

  require 'kickstart/plugins/lint',

  require 'kickstart/plugins/lualine',

  -- require 'kickstart/plugins/markview',

  require 'kickstart/plugins/mini-nvim',

  require 'kickstart/plugins/neo-tree',

  require 'kickstart/plugins/nvim-lspconfig',

  require 'kickstart/plugins/render-markdown',

  require 'kickstart/plugins/telescope',

  require 'kickstart/plugins/telescope-file-browser',

  require 'kickstart/plugins/todo-comments',

  require 'kickstart/plugins/treesitter',

  require 'kickstart/plugins/which-key',

  require 'kickstart/plugins/cmp_luasnip',

  require 'kickstart/plugins/cmp-nvim-lsp',

  require 'kickstart/plugins/cmp-path',

  require 'kickstart/plugins/luasnip',

  require 'kickstart/plugins/nvim-cmp',

  require 'kickstart/plugins/vimbegood',

  -- require 'kickstart/plugins/colorschemes/doom-one',

  require 'kickstart/plugins/orgmode/headlines',

  require 'kickstart/plugins/orgmode/orgmode',

  -- The following two comments only work if you have downloaded the kickstart repo, not just copy pasted the
  -- init.lua. If you want these files, they are in the repository, so you can just download them and
  -- place them in the correct locations.

  -- NOTE: Next step on your Neovim journey: Add/Configure additional plugins for Kickstart
  --
  --  Here are some example plugins that I've included in the Kickstart repository.
  --  Uncomment any of the lines below to enable them (you will need to restart nvim).
  --
  -- require 'lua/kickstart.plugins.debug',
  -- require 'lua/kickstart.plugins.indent_line',
  -- require 'lua/kickstart.plugins.lint',
  -- require 'lua/kickstart.plugins.autopairs',
  -- require 'lua/kickstart.plugins.neo-tree',

  -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
  --    This is the easiest way to modularize your config.
  --
  --  Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
  --    For additional information, see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
  -- { import = 'custom.plugins' },
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- Autocommands to automatically disable the indent_line (IndentBlankLine plugin) when in the dashboard

-- Autocommand to disable the plugin when entering the dashboard
vim.api.nvim_create_autocmd('BufEnter', {
  pattern = '*',
  callback = function()
    if vim.bo.filetype == 'dashboard' then
      vim.cmd 'IBLDisable' -- Enable IndentBlankLine outside of dashboard
    elseif vim.bo.filetype ~= 'dashboard' then
      vim.cmd 'IBLEnable' -- Enable IndentBlankLine outside of dashboard
    end
  end,
})

vim.api.nvim_create_autocmd('BufLeave', {
  pattern = '*',
  callback = function()
    if vim.bo.filetype == 'dashboard' then
      vim.cmd 'IBLDisable' -- Enable IndentBlankLine outside of dashboard
    elseif vim.bo.filetype ~= 'dashboard' then
      vim.cmd 'IBLEnable' -- Enable IndentBlankLine outside of dashboard
    end
  end,
})

-- Autocommand to re-enable the plugin when leaving the dashboard
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'dashboard',
  callback = function()
    -- Check if we're leaving the dashboard
    if vim.bo.filetype == 'dashboard' then
      vim.cmd 'IBLDisable' -- Enable IndentBlankLine outside of dashboard
    elseif vim.bo.filetype ~= 'dashboard' then
      vim.cmd 'IBLEnable' -- Enable IndentBlankLine outside of dashboard
    end
  end,
})
-- vim: ts=2 sts=2 sw=2 et
