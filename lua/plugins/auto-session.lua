return {
	"rmagatti/auto-session",
	dependencies = { "nvim-telescope/telescope.nvim" },
	config = function()
		require("auto-session").setup({
			auto_session_suppress_dirs = { "~/" },
		})
		vim.keymap.set("n", "<leader>rs", ":Autosession search<CR>")
		vim.keymap.set("n", "<leader>ds", ":Autosession delete<CR>")
	end,
}
