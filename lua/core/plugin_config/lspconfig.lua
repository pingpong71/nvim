require("mason-lspconfig").setup()

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.stdpath "config" .. "/lua"] = true,
        },
      },
    },
  }
}


require("lspconfig").pyright.setup {
  capabilities = capabilities,
}

require("lspconfig").gopls.setup {
  capabilities = capabilities,
  cmd = {'gopls'},
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
}

require("lspconfig").rust_analyzer.setup({
  capabilities = capabilities,
  filetypes = {"rust"},
  root_dir = util.root_pattern("Cargo.toml"),
  settings = {
    ['rust…analyzer'] = {
      cargo = {
        allFeatures = true,
      },
    },
  },
})

require("lspconfig").clangd.setup {
  capabilities = capabilities,
}
