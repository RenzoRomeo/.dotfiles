return {
  "VonHeikemen/lsp-zero.nvim",
  branch = "v2.x",
  dependencies = {
    -- LSP Support
    { "neovim/nvim-lspconfig" },           -- Required
    { "williamboman/mason.nvim" },         -- Optional
    { "williamboman/mason-lspconfig.nvim" }, -- Optional

    -- Autocompletion
    { "hrsh7th/nvim-cmp" },   -- Required
    { "hrsh7th/cmp-nvim-lsp" }, -- Required
    { "L3MON4D3/LuaSnip" },   -- Required
  },
  config = function()
    local lsp = require("lsp-zero").preset({})

    lsp.on_attach(function(client, bufnr)
      local opts = { buffer = bufnr, remap = false }

      -- Custom LSP mappings
      vim.keymap.set("n", "gd", function()
        vim.lsp.buf.definition()
      end, opts)
      vim.keymap.set("n", "K", function()
        vim.lsp.buf.hover()
      end, opts)
      vim.keymap.set("n", "gca", function()
        vim.lsp.buf.code_action()
      end, opts)
      vim.keymap.set("n", "gr", function()
        vim.lsp.buf.rename()
      end, opts)

      -- Autocomplete bindings
      local cmp = require("cmp")
      local cmp_select = { behavior = cmp.SelectBehavior.Select }
      local cmp_mappings = lsp.defaults.cmp_mappings({
        ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
        ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
        ["<C-y>"] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
      })

      lsp.setup_nvim_cmp({
        mapping = cmp_mappings,
      })
    end)

    lsp.setup()
  end,
}
