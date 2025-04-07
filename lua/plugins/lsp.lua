return
{
  {
    "williamboman/mason.nvim",

    config =
      function()
	require("mason").setup()
      end
  },

  {
    "williamboman/mason-lspconfig.nvim",
    
    opts = 
      {
	ensure_installed = 
	  {
	    "lua_ls",
	    "clangd",
	  }
      },

    config =
      function(_, opts)
	require("mason-lspconfig").setup(opts)
      end
  },

  {
    "neovim/nvim-lspconfig",
    
    dependencies =
      {
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
      },

    config =
      function()
	local lspconfig = require("lspconfig")
	lspconfig.lua_ls.setup({})
	lspconfig.clangd.setup({})
      end
  }
}
