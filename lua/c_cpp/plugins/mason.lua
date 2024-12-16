return {
	{
		-- enabled = false,
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"clangd",
			},
		},
		config = function(_, opts)
			require('mason').setup(opts)
		end
	},
}
