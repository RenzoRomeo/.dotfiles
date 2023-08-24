return {
	"mhartington/formatter.nvim",
	config = function()
		require("formatter").setup({
			filetype = {
				lua = {
					require("formatter.filetypes.lua").stylua,
				},
				python = {
					require("formatter.filetypes.python").black,
				},
				c = {
					require("formatter.filetypes.c").clangformat,
				},
				cpp = {
					require("formatter.filetypes.c").clangformat,
				},
				javascript = {
					require("formatter.filetypes.javascript").prettierd,
				},
				typescript = {
					require("formatter.filetypes.typescript").prettierd,
				},
			},
		})
	end,
}
