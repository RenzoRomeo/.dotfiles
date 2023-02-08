return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig"
    },
    config = function()
      local mason = require("mason")

      local mason_lspconfig = require("mason-lspconfig")

      local lspconfig = require("lspconfig")

      mason.setup({})

      mason_lspconfig.setup({})

      local on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_create_autocmd({ "BufWritePre" }, {
              group = vim.api.nvim_create_augroup("SharedLspFormatting", { clear = true }),
              pattern = "*",
              command = "lua vim.lsp.buf.format()",
          })
        end
      end

      mason_lspconfig.setup_handlers({
          function(server_name)
            lspconfig[server_name].setup({
                on_attach = on_attach
            })
          end
      })

      lspconfig["sumneko_lua"].setup({
          on_attach = on_attach,
          settings = {
              Lua = {
                  diagnostics = {
                      globals = { "vim" }
                  },
                  format = {
                      enable = true,
                      defaultConfig = {
                          indent_style = "space",
                          indent_size = "2"
                      }
                  }
              }
          }
      })
    end
}
