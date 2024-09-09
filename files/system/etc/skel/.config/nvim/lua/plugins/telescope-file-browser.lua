return {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function () 
    local telescope = require("telescope")
    telescope.load_extension "file_browser"
    vim.keymap.set('n', '<leader>.', ":Telescope file_browser <CR>", {})
  end
}

