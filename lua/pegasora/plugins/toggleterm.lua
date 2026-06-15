return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
      { "<leader>aa", "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
      { "<Esc>", "<C-\\><C-n>", mode = "t", desc = "Exit terminal insert mode" },
    },
    opts = {
      direction  = "float",
      float_opts = {
        border = "curved",
      },
      close_on_exit = false,
      shell         = "zsh",
    },
  },
}
