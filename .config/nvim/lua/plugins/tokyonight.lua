return {
    "folke/tokyonight.nvim",
    config = function()
      vim.cmd [[colorscheme tokyonight]]
      -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      -- vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    end
}
