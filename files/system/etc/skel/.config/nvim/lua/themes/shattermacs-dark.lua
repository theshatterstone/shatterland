-- Shattermacs-Dark Neovim Theme (Fixed)
-- Generated based on the Emacs theme provided

local colors = {
  blue_primary = '#51afef',
  bg_primary = '#282c34', -- Corrected to ensure this color is applied
  bg_secondary = '#1c1f24',
  bg_secondary_darker = '#21252b',
  fg_primary = '#abb2bf',
  fg_secondary = '#5c6370',
  blue_secondary = '#569cd6',
  blue_tertiary = '#46d9ff',
  blue_quaternary = '#0f7ecc',
  bg_blue_primary = '#3c4a5a',
  bg_blue_secondary = '#344b5c',
  bg_blue_tertiary = '#375662',
  bg_blue_quaternary = '#2b4557',
}

local theme = {}

theme.load_syntax = function()
  local syntax = {
    Normal = { fg = colors.fg_primary, bg = colors.bg_primary }, -- Explicit background color setting
    Comment = { fg = colors.fg_secondary, italic = true },
    Constant = { fg = colors.blue_quaternary },
    String = { fg = colors.blue_secondary },
    Identifier = { fg = colors.blue_primary },
    Function = { fg = colors.blue_tertiary },
    Statement = { fg = colors.blue_primary, bold = true },
    Keyword = { fg = colors.blue_primary, bold = true },
    Type = { fg = colors.blue_secondary, bold = true },
    Special = { fg = colors.blue_tertiary },
    Underlined = { fg = colors.blue_tertiary, underline = true },
    Ignore = { fg = colors.bg_secondary },
    Error = { fg = colors.blue_primary, bg = colors.bg_secondary_darker, bold = true },
    Todo = { fg = colors.blue_primary, bg = colors.bg_secondary_darker, bold = true },
  }

  for group, conf in pairs(syntax) do
    vim.api.nvim_set_hl(0, group, conf)
  end
end

theme.load_treesitter = function()
  local ts = {
    TSComment = { fg = colors.fg_secondary, italic = true },
    TSConstant = { fg = colors.blue_quaternary },
    TSString = { fg = colors.blue_secondary },
    TSFunction = { fg = colors.blue_tertiary },
    TSKeyword = { fg = colors.blue_primary, bold = true },
    TSVariable = { fg = colors.blue_primary },
    TSParameter = { fg = colors.blue_primary },
    TSType = { fg = colors.blue_secondary, bold = true },
    TSPunctBracket = { fg = colors.fg_primary },
    TSConditional = { fg = colors.blue_primary, bold = true },
    TSRepeat = { fg = colors.blue_primary, bold = true },
    TSOperator = { fg = colors.blue_primary },
    TSException = { fg = colors.blue_primary },
    TSField = { fg = colors.blue_primary },
    TSProperty = { fg = colors.blue_primary },
  }

  for group, conf in pairs(ts) do
    vim.api.nvim_set_hl(0, group, conf)
  end
end

theme.load_orgmode = function()
  -- Define own colors
  vim.api.nvim_set_hl(0, '@OrgTSHeadlineLevel1', { bg = colors.bg_blue_primary, fg = colors.blue_primary })
  vim.api.nvim_set_hl(0, '@OrgTSHeadlineLevel2', { bg = colors.bg_blue_secondary, fg = colors.blue_secondary })
  vim.api.nvim_set_hl(0, '@OrgTSHeadlineLevel3', { bg = colors.bg_blue_tertiary, fg = colors.blue_tertiary })
  vim.api.nvim_set_hl(0, '@OrgTSHeadlineLevel4', { bg = colors.bg_blue_quaternary, fg = colors.blue_quaternary })
  vim.api.nvim_set_hl(0, '@org.headline.level1', { bg = colors.bg_blue_primary, fg = colors.blue_primary })
  vim.api.nvim_set_hl(0, '@org.headline.level2', { bg = colors.bg_blue_secondary, fg = colors.blue_secondary })
  vim.api.nvim_set_hl(0, '@org.headline.level3', { bg = colors.bg_blue_tertiary, fg = colors.blue_tertiary })
  vim.api.nvim_set_hl(0, '@org.headline.level4', { bg = colors.bg_blue_quaternary, fg = colors.blue_quaternary })
  vim.api.nvim_set_hl(0, '@org.keyword.todo', { fg = colors.fg_primary })
  vim.api.nvim_set_hl(0, '@org.edit_src', { bg = colors.bg_secondary_darker })
  vim.api.nvim_set_hl(0, '@org.code', { bg = colors.bg_secondary_darker })
  -- Link to another highlight group
  -- vim.api.nvim_set_hl(0, '@org.agenda.scheduled_past', { link = 'Statement' })

  -- headlines.nvim colours config
  -- vim.cmd [[highlight Headline1 guibg=colors.bg_blue_primary ]]
  -- vim.cmd [[highlight Headline2 guibg=colors.bg_blue_secondary ]]
  -- vim.cmd [[highlight Headline3 guibg=colors.bg_blue_tertiary ]]
  -- vim.cmd [[highlight Headline4 guibg=colors.bg_blue_quaternary ]]
  -- vim.cmd [[highlight Headline5 guibg=colors.bg_blue_primary ]]
  -- vim.cmd [[highlight Headline6 guibg=colors.bg_blue_secondary ]]
  -- vim.cmd [[highlight Headline7 guibg=colors.bg_blue_tertiary ]]
  -- vim.cmd [[highlight Headline8 guibg=colors.bg_blue_quaternary ]]
  --

  -- vim.cmd [[highlight Headline1 guibg="#3c4a5a"]] -- Background for blue_primary (#51afef)
  -- vim.cmd [[highlight Headline2 guibg="#344b5c" ]] -- Background for blue_secondary (#569cd6)
  -- vim.cmd [[highlight Headline3 guibg="#375662" ]] -- Background for blue_tertiary (#46d9ff)
  -- vim.cmd [[highlight Headline4 guibg="#2b4557" ]] -- Background for blue_quaternary (#0f7ecc)

  vim.cmd(string.format('highlight RenderMarkdownH1 guibg=%s guifg=%s', colors.bg_blue_primary, colors.blue_primary))
  vim.cmd(string.format('highlight RenderMarkdownH2 guibg=%s guifg=%s', colors.bg_blue_secondary, colors.blue_secondary))
  vim.cmd(string.format('highlight RenderMarkdownH3 guibg=%s guifg=%s', colors.bg_blue_tertiary, colors.blue_tertiary))
  vim.cmd(string.format('highlight RenderMarkdownH4 guibg=%s guifg=%s', colors.bg_blue_quaternary, colors.blue_quaternary))
  vim.cmd(string.format('highlight RenderMarkdownH5 guibg=%s guifg=%s', colors.bg_blue_primary, colors.blue_primary))
  vim.cmd(string.format('highlight RenderMarkdownH6 guibg=%s guifg=%s', colors.bg_blue_secondary, colors.blue_secondary))
  vim.cmd(string.format('highlight RenderMarkdownH7 guibg=%s guifg=%s', colors.bg_blue_tertiary, colors.blue_tertiary))
  vim.cmd(string.format('highlight RenderMarkdownH8 guibg=%s guifg=%s', colors.bg_blue_quaternary, colors.blue_quaternary))
  vim.cmd(string.format('highlight RenderMarkdownH1BG guibg=%s guifg=%s', colors.bg_blue_primary, colors.blue_primary))
  vim.cmd(string.format('highlight RenderMarkdownH2BG guibg=%s guifg=%s', colors.bg_blue_secondary, colors.blue_secondary))
  vim.cmd(string.format('highlight RenderMarkdownH3BG guibg=%s guifg=%s', colors.bg_blue_tertiary, colors.blue_tertiary))
  vim.cmd(string.format('highlight RenderMarkdownH4BG guibg=%s guifg=%s', colors.bg_blue_quaternary, colors.blue_quaternary))
  vim.cmd(string.format('highlight RenderMarkdownH5BG guibg=%s guifg=%s', colors.bg_blue_primary, colors.blue_primary))
  vim.cmd(string.format('highlight RenderMarkdownH6BG guibg=%s guifg=%s', colors.bg_blue_secondary, colors.blue_secondary))
  vim.cmd(string.format('highlight RenderMarkdownH7BG guibg=%s guifg=%s', colors.bg_blue_tertiary, colors.blue_tertiary))
  vim.cmd(string.format('highlight RenderMarkdownH8BG guibg=%s guifg=%s', colors.bg_blue_quaternary, colors.blue_quaternary))

  vim.cmd(string.format('highlight Headline1 guibg=%s guifg=%s', colors.bg_blue_primary, colors.blue_primary))
  vim.cmd(string.format('highlight Headline2 guibg=%s guifg=%s', colors.bg_blue_secondary, colors.blue_secondary))
  vim.cmd(string.format('highlight Headline3 guibg=%s guifg=%s', colors.bg_blue_tertiary, colors.blue_tertiary))
  vim.cmd(string.format('highlight Headline4 guibg=%s guifg=%s', colors.bg_blue_quaternary, colors.blue_quaternary))

  vim.cmd(string.format('highlight CodeBlock guibg=%s', colors.bg_secondary_darker))
  vim.cmd(string.format('highlight Dash guibg=%s gui=bold', colors.bg_blue_primary))
  vim.cmd(string.format('highlight Quote guibg=%s gui=bold', colors.blue_primary))

  vim.cmd(string.format('highlight DashboardHeader guifg=%s ', colors.blue_primary))
  vim.cmd(string.format('highlight DashboardFooter guifg=%s ', colors.blue_primary))
  vim.cmd(string.format('highlight DashboardProjectTitleIcon guifg=%s ', colors.blue_primary))
  vim.cmd(string.format('highlight DashboardProjectTitle guifg=%s ', colors.blue_primary))
  vim.cmd(string.format('highlight DashboardMruIcon guifg=%s ', colors.blue_primary))
  vim.cmd(string.format('highlight DashboardMruTitle guifg=%s ', colors.blue_primary))
end

theme.setup = function()
  theme.load_syntax()
  theme.load_treesitter()
  theme.load_orgmode()
end

return theme
