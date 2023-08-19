local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- LSP
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>")
map("n", "gr", "<cmd>lua vim.lsp.buf.rename()<cr>")
map("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>")

-- Telescope
map("n", "<leader>sf", "<cmd>Telescope find_files<cr>")
map("n", "<leader>sg", "<cmd>Telescope live_grep<cr>")
map("n", "<leader>sb", "<cmd>Telescope buffers<cr>")

-- Center search results
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
