return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "L3MON4D3/LuaSnip"
    },
    config = function()
      local cmp = require("cmp")
      local lspkind = require("lspkind")

      cmp.setup({
          window = {
              completion = cmp.config.window.bordered({ border = "rounded" }),
              documentation = cmp.config.window.bordered({ border = "rounded" })
          },
          snippet = {
              expand = function(args)
                require("luasnip").lsp_expand(args.body)
              end
          },
          mapping = cmp.mapping.preset.insert({
              ["<C-d>"] = cmp.mapping.scroll_docs( -4),
              ["<C-f>"] = cmp.mapping.scroll_docs(4),
              ["<C-Space>"] = cmp.mapping.complete(),
              ["<C-e>"] = cmp.mapping.close(),
              ["<CR>"] = cmp.mapping.confirm({
                  behavior = cmp.ConfirmBehavior.Replace,
                  select = true
              })
          }),
          sources = cmp.config.sources({
              { name = "nvim_lsp" },
              { name = "buffer" }
          }),
          formatting = {
              format = lspkind.cmp_format({ with_text = false, maxwidth = 50 })
          }
      })
    end
}
