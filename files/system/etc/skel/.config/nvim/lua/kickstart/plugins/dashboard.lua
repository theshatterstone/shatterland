return {
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        -- config
        theme = 'hyper', --  theme is doom and hyper default is hyper
        hide = {
          statusline, -- hide statusline default is true
          tabline, -- hide the tabline
          winbar, -- hide winbar
        },
        preview_file_height = 11,
        preview_file_width = 70,
        -- theme config
        config = {
          header = {
            '██████╗██╗ ██╗ ████╗ ██████╗██████╗██████╗█████╗ ██╗  ██╗██╗███╗  ███╗',
            '██╔═══╝██║ ██║██╔═██╗╚═██╔═╝╚═██╔═╝██╔═══╝██╔═██╗██║  ██║██║████╗████║',
            '██████╗██████║██████║  ██║    ██║  ████╗  █████╔╝██║  ██║██║██╔███╔██║',
            '╚═══██║██╔═██║██╔═██║  ██║    ██║  ██╔═╝  ██╔═██╗╚██╗██╔╝██║██║╚══╝██║',
            '██████║██║ ██║██║ ██║  ██║    ██║  ██████╗██║ ██║ ╚███╔╝ ██║██║    ██║',
            '╚═════╝╚═╝ ╚═╝╚═╝ ╚═╝  ╚═╝    ╚═╝  ╚═════╝╚═╝ ╚═╝  ╚══╝  ╚═╝╚═╝    ╚═╝',
            '',
            '',
            ' [ TIP: To exit Neovim, just power off your computer. ] ',
            '',
          },
          -- center = {
          --   {
          --     icon = ' ',
          --     icon_hl = 'Title',
          --     desc = 'Find File           ',
          --     desc_hl = 'String',
          --     key = 'SPC f f',
          --     -- keymap = 'SPC f f',
          --     key_hl = '',
          --     key_format = ' %s', -- remove default surrounding `[]`
          --     action = 'lua print(2)',
          --   },
          --   {
          --     icon = ' ',
          --     desc = 'Find Recent Files',
          --     key = 'SPC f r',
          --     -- keymap = 'SPC f r',
          --     key_format = ' %s', -- remove default surrounding `[]`
          --     action = 'lua print(3)',
          --   },
          -- },

          shortcut = {},
          packages = { enable = true }, -- show how many plugins neovim loaded
          -- limit how many projects list, action when you press key or enter it will run this action.
          -- action can be a functino type, e.g.
          -- action = func(path) vim.cmd('Telescope find_files cwd=' .. path) end
          project = { enable = true, limit = 4, icon = '', label = 'Recent Projects:', action = 'Telescope find_files cwd=' },
          mru = { limit = 8, icon = '', label = 'Recent files:', cwd_only = false },
          footer = { '', "🎉 If I'm using Neovim, then my Emacs config must be broken!" }, --your footer
        },
      }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
  },

  -- Global setting to disable tabline
}
