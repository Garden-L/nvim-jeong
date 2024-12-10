
return {
	{
		-- enabled = false,
		"williamboman/mason.nvim",
		config = function()
			require('mason').setup()
		end
	},
}
