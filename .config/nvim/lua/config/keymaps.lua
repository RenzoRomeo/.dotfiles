local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Telescope
map("n", "<leader>sf", "<cmd>Telescope find_files hidden=true<cr>")
map("n", "<leader>sg", "<cmd>Telescope live_grep<cr>")
map("n", "<leader>sb", "<cmd>Telescope buffers<cr>")

-- Center search results
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
