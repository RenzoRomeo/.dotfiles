return {
    "xiyaowong/nvim-transparent",
    config = function()
      require("transparent").setup({
          enable = true,
          -- extra_groups = { "NvimTreeNormal", "FloatBorder" },
          extra_groups = "all",
      })
    end,
}
