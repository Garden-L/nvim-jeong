return {
	'akinsho/toggleterm.nvim', 
	version = "*",
	config = function()
		local keymap = vim.keymap.set
		local opts = { buffer = 0 }
		require("toggleterm").setup(
			{
				open_mapping = [[<C-`>]],
				direction = "float",
				on_open = function(term)
					keymap("t", "<esc>", function() term:toggle() end,opts)
				end,
			}
		)
	end
}
