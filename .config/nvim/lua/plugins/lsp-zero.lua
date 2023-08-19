return {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  dependencies = {
    -- LSP Support
    { 'neovim/nvim-lspconfig' },             -- Required
    { 'williamboman/mason.nvim' },           -- Optional
    { 'williamboman/mason-lspconfig.nvim' }, -- Optional

    -- Autocompletion
    { 'hrsh7th/nvim-cmp' },     -- Required
    { 'hrsh7th/cmp-nvim-lsp' }, -- Required
    { 'L3MON4D3/LuaSnip' },     -- Required
  },
  config = function()
    local lsp = require('lsp-zero').preset({})
    lsp.on_attach(function(client, bufnr)
      local opts = { buffer = bufnr, remap = false }

      -- Custom LSP mappings
      vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
      vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
      vim.keymap.set("n", "gca", function() vim.lsp.buf.code_action() end, opts)
      vim.keymap.set("n", "gr", function() vim.lsp.buf.rename() end, opts)

      -- Format on save
      vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
    end)
    lsp.setup()
  end
}
