return{
	'hrsh7th/nvim-cmp',
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-nvim-lsp-signature-help',
		'onsails/lspkind.nvim',
		{
			'L3MON4D3/LuaSnip',
			version = "v2.*",
			build = "make install_jsregexp",
		},
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
	},
	event = "InsertEnter",
	config = function()
		local cmp = require("cmp")

		require("luasnip").setup()
		require('cmp_nvim_lsp').setup()

		require('luasnip.loaders.from_vscode').lazy_load()
		cmp.setup({

			snippet = {
				expand = function(args)
					local luasnip = require("luasnip")
					luasnip.lsp_expand(args.body)
				end,
			},
			
			mapping = cmp.mapping.preset.insert({
				["<S-tab>"] = cmp.mapping.select_prev_item(),
				["<tab>"] = cmp.mapping.select_next_item(),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = false }),
			}),

			sources = cmp.config.sources({
				{ name = "nvim_lsp"},
				{ name = "luasnip" },
				{ name = "buffer" },
				{ name = "path" },
			}),
		})
	end
}
