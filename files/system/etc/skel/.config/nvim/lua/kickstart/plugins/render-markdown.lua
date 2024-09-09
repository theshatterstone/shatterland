return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    opts = {},
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    },
    -- Get markdownlint installed
    config = function()
      -- Initialize mason
      require('mason').setup()
      require('render-markdown').setup {
        render_modes = { 'n', 'i', 'v', 'c' },
        backgrounds = {
          'RenderMarkdownH1Bg',
          'RenderMarkdownH2Bg',
          'RenderMarkdownH3Bg',
          'RenderMarkdownH4Bg',
          'RenderMarkdownH5Bg',
          'RenderMarkdownH6Bg',
          'RenderMarkdownH7Bg',
          'RenderMarkdownH8Bg',
        },
        -- The 'level' is used to index into the array using a clamp
        -- Highlight for the heading and sign icons
        foregrounds = {
          'RenderMarkdownH1',
          'RenderMarkdownH2',
          'RenderMarkdownH3',
          'RenderMarkdownH4',
          'RenderMarkdownH5',
          'RenderMarkdownH6',
          'RenderMarkdownH7',
          'RenderMarkdownH8',
        },
      }
      -- Install markdownlint
      local mason_registry = require 'mason-registry'

      -- Check if markdownlint is already installed, and if not, install it
      if not mason_registry.is_installed 'markdownlint' then
        mason_registry.get_package('markdownlint'):install()
      end
    end,
  },
}
