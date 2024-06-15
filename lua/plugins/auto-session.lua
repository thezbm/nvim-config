return {
	"rmagatti/auto-session",
	dependencies = { "nvim-telescope/telescope.nvim" },
	config = function()
		require("auto-session").setup({
			auto_session_suppress_dirs = { "~/" },
			pre_save_cmds = {
				function()
					require("nvim-tree.api").tree.close()
				end,
			},
		})
		vim.keymap.set("n", "<leader>rs", require("auto-session.session-lens").search_session)
		vim.keymap.set("n", "<leader>ds", ":Autosession delete<CR>")
	end,
}
