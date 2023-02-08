return {
    "glepnir/lspsaga.nvim",
    event = "BufRead",
    config = function()
      require("lspsaga").setup({
          ui = {
              theme = "round",
              title = false,
              border = "rounded",
              winblend = 0,
              expand = "",
              collapse = "",
              preview = " ",
              code_action = "💡",
              diagnostic = "🐞",
              incoming = " ",
              outgoing = " ",
              hover = ' ',
              kind = {},
          },
      })
    end,
    dependencies = { { "nvim-tree/nvim-web-devicons" } }
}
