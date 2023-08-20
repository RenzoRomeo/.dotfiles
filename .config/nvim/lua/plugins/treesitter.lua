return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "help", "javascript", "typescript", "c", "cpp", "lua" },
    sync_install = false,
    auto_install = false,
    highlight = {
      enable = true
    }
  }
}
