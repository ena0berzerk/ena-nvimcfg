require'nvim-treesitter.configs'.setup {
  ensure_installed = { "typescript", "lua", "vim", "javascript", "go" },

  sync_install = false,
  auto_install = true,

 highlight = {
    enable = true,
  }
}
