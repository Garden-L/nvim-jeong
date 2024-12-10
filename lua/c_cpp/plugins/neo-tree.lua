return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function() 
		require("neo-tree").setup(
			{
				close_if_last_window = false,
				event_handlers = {
					{
						event = "file_opened",
						handler = function(file_path)
								-- require("neo-tree.command").execute({ action = "close"})
						end
					},
					{
						event = "neo_tree_buffer_enter",
						handler = function()
							
						end
					}
				},
				filesystem = {
					hijack_netrw_behavior = "open_current",
				},
				source_selector = {
					winbar = true,
				},
				window = {
					position = "left"
				}
			}
		)
	end	
}
