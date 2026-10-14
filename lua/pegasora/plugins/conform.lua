return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = {
      default_format_opts = {
        timeout_ms = 3000,
        async      = false,
        quiet      = false,
        lsp_format = "fallback",
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
      formatters_by_ft = {
        lua        = { "stylua" },
        python     = { "ruff" },
        sh         = { "shfmt" },
        rust       = { "rustfmt" },
        nix        = { "alejandra" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        css        = { "prettier" },
        json       = { "prettier" },
        yaml       = { "prettier" },
        c          = { "clang_format" },
        cpp        = { "clang_format" },
        go         = { "gofmt" },
        zig        = { "zigfmt" },
        typst      = { "typstfmt" },
      },
      formatters = {
        injected = { options = { ignore_errors = true } },
      },
    },
  },
}
