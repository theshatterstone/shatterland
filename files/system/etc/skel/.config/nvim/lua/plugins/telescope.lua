-- Plugins
return {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function ()
    local builtin = require("telescope.builtin")
    vim.keymap.set('n', '<leader>fr', builtin.find_files, {})
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    telescope.setup {
      pickers = {
        find_files = { hidden = true }
      },
      defaults = {
        mappings = {
          i = {
            ["<esc>"] = actions.close,
          },
        },
      },
    }
    
     end   
}
