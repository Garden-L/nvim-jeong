return
{
  "hrsh7th/nvim-cmp",

  dependencies = {
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-nvim-lsp-signature-help',
  'onsails/lspkind.nvim',
  'ray-x/cmp-treesitter',
    'L3MON4D3/LuaSnip'
  },

  opts =
    function()
      local cmp = require("cmp")

      return
      {
	-- sources는 아래의 자동완성을 표시해준다.
	sources =
	  {
	    { name = "nvim_lsp" },
	    { name = "cmp-buffer" },
	    { name = "luasnip"}
	  },

	-- cmp.mapping.preset.insert 자동 완성창이 켜진상태에서의 키매핑이다.
	mapping =
	  cmp.mapping.preset.insert({
	    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
	    ['<C-f>'] = cmp.mapping.scroll_docs(4),
	    ['<C-Space>'] = cmp.mapping.confirm({ select = true}),
	    ['<C-e>'] = cmp.mapping.abort(),
	    ['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item.
	    ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
	    ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
	  }),
      }
    end,

  config =
    function(_, opts)
      require("cmp").setup(opts)
    end
}
