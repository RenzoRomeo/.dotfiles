return {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        ensure_installed = { "markdown", "typescript", "lua" }
    },
    config = function()
      vim.cmd([[TSUpdate]])
    end
}
