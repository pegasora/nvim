return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    main = "nvim-treesitter",
    opts = {
      ensure_installed = {
        "python", "rust", "c", "cpp", "go",
        "json", "zig", "typescript", "javascript",
        "typst", "just",
        "lua", "vim", "vimdoc", "bash",
      },
      highlight = { enable = true },
      indent    = { enable = true },
    },
  },
}
