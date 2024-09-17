return {
  {
    'lukas-reineke/headlines.nvim',
    dependencies = 'nvim-treesitter/nvim-treesitter',
    opts = {
      org = {
        -- headline_highlights = { 'Headline1', 'Headline2', 'Headline3', 'Headline4', 'Headline5', 'Headline6', 'Headline7', 'Headline8' },
        headline_highlights = { 'Headline1', 'Headline2', 'Headline3', 'Headline4' },
        -- bullet_highlights = { 'Headline1', 'Headline2', 'Headline3', 'Headline4', 'Headline5', 'Headline6', 'Headline7', 'Headline8' },
        bullet_highlights = { 'Headline1', 'Headline2', 'Headline3', 'Headline4' },
        codeblock_highlight = 'CodeBlock',
        dash_highlight = 'Dash',
        dash_string = '-',
        quote_highlight = 'Quote',
        fat_headlines = false,
        fat_headline_upper_string = '▃',
        fat_headline_lower_string = '🬂',
      },
      markdown = {
        headline_highlights = false,
      },
    },
  },
}
