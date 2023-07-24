require("catppuccin").setup({
  flavour = 'mocha',
  no_bold = true,
  color_overrides = {
    mocha = {
      base = '#0f1119',
      mantle = '#090b10',
    },
  },
  highlight_overrides = {
    all = function(colors)
      return {
        ['NvimTreeIndentMarker'] = { fg = '#232637' },
        -- indent-blankline
        ['IndentBlanklineChar'] = { fg = '#232637' },
        ['IndentBlanklineContextChar'] = { fg = '#464B5D' },
        -- treesitter
        ['@constructor.tsx'] = { fg = colors.yellow },
        ['@tag.tsx'] = { fg = colors.red },
        ['@string.scss'] = { fg = colors.orange },
        ['@type.definition.scss'] = { fg = colors.blue },
      }
    end,
  },
  integrations = {
    treesitter = true,
    treesitter_context = true,
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    indent_blankline = {
      enabled = true,
    },
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = { 'italic' },
        hints = { 'italic' },
        warnings = { 'italic' },
        information = { 'italic' },
      },
      underlines = {
        errors = { 'undercurl' },
        hints = { 'undercurl' },
        warnings = { 'undercurl' },
        information = { 'undercurl' },
      },
    },
  },
})

vim.cmd.colorscheme "catppuccin"
