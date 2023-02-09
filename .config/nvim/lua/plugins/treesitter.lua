return {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        ensure_installed = { "markdown", "typescript", "lua", "tsx", "html" }
    },
    config = function()
      vim.cmd([[TSUpdate]])
      require("nvim-treesitter.configs").setup({
          autotag = {
              enable = true
          },
      })
    end
}
