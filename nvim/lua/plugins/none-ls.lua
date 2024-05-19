return {
  "nvimtools/none-ls.nvim",
  dependencies = {
      "nvimtools/none-ls-extras.nvim"
  },
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
        -- Lua
				null_ls.builtins.formatting.stylua,
        -- JavaScript, TypeScript, HTML, CSS
				null_ls.builtins.formatting.prettier,
        function()
				  require("none-ls.diagnostics.eslint")
        end,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
