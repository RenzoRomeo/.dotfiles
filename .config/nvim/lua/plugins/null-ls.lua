return {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      local status, null_ls = pcall(require, "null-ls")
      if (not status) then return end

      null_ls.setup({
          on_attach = function(client, bufnr)
            if client.supports_method("textDocument/formatting") then
              vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
              vim.api.nvim_create_autocmd("BufWritePre", {
                  group = augroup,
                  buffer = bufnr,
                  callback = function()
                    vim.lsp.buf.format({ bufnr = bufnr })
                  end,
              })
            end
          end,
          sources = {
              null_ls.builtins.diagnostics.eslint_d.with({
                  diagnostics_format = "[eslint] #{m}\n(#{c})"
              }),
              null_ls.builtins.diagnostics.zsh
          }
      })
    end
}
