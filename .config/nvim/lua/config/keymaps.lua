local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Open file explorer
map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")

-- Telescope
map("n", "<leader>sf", "<cmd>Telescope find_files<cr>")
map("n", "<leader>sg", "<cmd>Telescope live_grep<cr>")
map("n", "<leader>sb", "<cmd>Telescope buffers<cr>")

-- LazyGit
map("n", "<leader>lg", "<cmd>LazyGit<cr>")

-- Lspsaga
map("n", "K", "<cmd>Lspsaga hover_doc<cr>")
map("n", "gd", "<cmd>Lspsaga goto_definition<cr>")
map("n", "gr", "<cmd>Lspsaga rename<cr>")
map("n", "gf", "<cmd>Lspsaga lsp_finder<cr>")
map("n", "gca", "<cmd>Lspsaga code_action<cr>")

-- Center search results
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
