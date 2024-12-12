return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.x',
	dependencies = {
		"nvim-lua/plenary.nvim" ,
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
					},
				},
			},
		})

		telescope.load_extension("fzf")

		local keymap = vim.keymap

		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
		keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>")
		keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
		keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
	end
}
