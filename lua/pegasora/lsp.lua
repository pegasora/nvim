-- lua
vim.lsp.config("lua_ls", {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  settings = {
    Lua = {
      runtime = { version = "LuaJIT" },
      workspace = {
        checkThirdParty = false,
        library = vim.api.nvim_get_runtime_file("", true),
      },
      diagnostics = { globals = { "vim" } },  -- stops "vim is undefined" warnings
      telemetry = { enable = false },
    },
  },
})

-- python
vim.lsp.config(
  "pyright",       
  { 
    cmd = { 
      "pyright-langserver", 
      "--stdio" 
    },         
    filetypes = { "python" } })

-- rust
vim.lsp.config(
  "rust_analyzer", { 
    cmd = { 
      "rust-analyzer" 
    },                         
    filetypes = { "rust" } })

-- c, c++
vim.lsp.config(
  "clangd",        { 
    cmd = { 
      "clangd" 
    },                                
    filetypes = { "c", "cpp" } })

-- go
vim.lsp.config(
  "gopls",         { 
    cmd = { 
      "gopls" 
    },                                 
    filetypes = { "go" } })

-- json 
vim.lsp.config(
  "jsonls",        
  { 
    cmd = { 
      "vscode-json-language-server", 
      "--stdio" }, 
      filetypes = { "json", "jsonc" } })

-- zls 
vim.lsp.config(
  "zls",           
  { 
    cmd = { 
      "zls" 
    },                                   
    filetypes = { "zig" } })

-- typst 
vim.lsp.config(
  "tinymist",      
  { 
    cmd = { 
      "tinymist" 
    },                              
    filetypes = { "typst" } })

-- ts + js 
vim.lsp.config(
  "ts_ls",         
  { 
    cmd = { 
      "typescript-language-server", 
      "--stdio" 
    }, 
    filetypes = { "typescript", "javascript" } })


-- enable all 
vim.lsp.enable({
  "pyright", "rust_analyzer", "clangd",
  "gopls", "jsonls", "zls", "tinymist", "ts_ls",
})


-- attach & binds
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local map = function(keys, func, desc)
      vim.keymap.set("n", keys, func, { buffer = ev.buf, desc = desc })
    end
    map("<leader>ld",          vim.lsp.buf.definition,    "Go to definition")
    map("<leader>lD",          vim.lsp.buf.declaration,   "Go to declaration")
    map("<leader>lr",          vim.lsp.buf.references,    "References")
    map("<leader>lk",           vim.lsp.buf.hover,         "Hover docs")
    map("<leader>ln",  vim.lsp.buf.rename,        "Rename")
    map("<leader>la",  vim.lsp.buf.code_action,   "Code action")
    map("<leader>le",   vim.diagnostic.open_float, "Show diagnostics")
    --map("[d",          vim.diagnostic.goto_prev,  "Prev diagnostic")
    --map("]d",          vim.diagnostic.goto_next,  "Next diagnostic")
  end,
})
