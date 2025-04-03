return {
  {
    "folke/edgy.nvim",
    event = "VeryLazy",
    enabled=false,
    opts = 
    {
        animate = {
	  enable=false,
	},
      left = {
	{
	  title = "Neo-Tree",
	  ft = "neo-tree",
	  filter = function(buf)
	    return vim.b[buf].neo_tree_source == "filesystem"
	  end,
	  size = { height = 0.5, width=30},
	},
      },
    },
    config = 
      function(_, opts)
	require("edgy").setup(opts)
      end,
  }
}
