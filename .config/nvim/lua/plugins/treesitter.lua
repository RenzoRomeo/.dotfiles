return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "markdown" }
  },
  config = function()
    vim.cmd([[TSUpdate]])
  end
}
