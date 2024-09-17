return {
  'nvim-telescope/telescope-file-browser.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  config = function()
    -- Telescope setup with file browser extension
    require('telescope').setup {
      extensions = {
        file_browser = {
          theme = 'ivy',
          hijack_netrw = true,
          hidden = { file_browser = true, folder_browser = true },
          mappings = {
            ['i'] = {
              -- your custom insert mode mappings
            },
            ['n'] = {
              -- Note: This part defines the mappings for file browser mode
              -- Replace <leader>. with your desired keybinding
            },
          },
        },
      },
    }

    -- Load the file browser extension after Telescope is set up
    require('telescope').load_extension 'file_browser'

    -- vim.api.nvim_set_keymap('n', '<leader>.', ':Telescope file_browser<CR>', { noremap = true, silent = true })

    vim.api.nvim_set_keymap(
      'n',
      '<leader>.',
      ':lua require("telescope").extensions.file_browser.file_browser({ cwd = vim.fn.expand("%:p:h") })<CR>',
      { noremap = true, silent = true }
    )
  end,
}
