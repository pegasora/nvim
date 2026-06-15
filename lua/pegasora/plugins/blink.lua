return {
  {
    "saghen/blink.cmp",
    version = "1.*",
    opts = {
      keymap = { 
        preset = "super-tab",

        -- overrides
        ['<Up>'] = { 'select_prev', 'fallback' },
        ['<Down>'] = { 'select_next', 'fallback' },
        ['<C-k>'] = { 'select_prev', 'fallback_to_mappings' },
        ['<C-j>'] = { 'select_next', 'fallback_to_mappings' },
      },
      completion = {
        documentation = { auto_show = true },
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
    },
  },
}
