require('nvim-treesitter.configs').setup {
  ensure_installed = { "go", "c", "lua", "rust", "ruby", "vim", "python" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
