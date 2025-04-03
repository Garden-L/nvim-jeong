return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  keys = 
  {
    {
      "<leader>e",
      function()
	require("neo-tree.command").execute({ toggle = true })
      end,
      desc = "Explorer NeoTree (Root Dir)",
    },
  },

  lazy = false,

  opts = 
  {
    sources = { "filesystem" },
    window = 
      {
	-- auto_expand_width = false,
	mappings = 
	  {
	    ["l"] = "open",
	    ["h"] = "close_node",
	    ["<space>"] = "none",
	    ["Y"] = 
	      {
		function(state)
		  local node = state.tree:get_node()
		  local path = node:get_id()
		  vim.fn.setreg("+", path, "c")
		end,
		desc = "Copy Path to Clipboard",
	      },
	    ["P"] = 
	      { 
		"toggle_preview", 
		config = { use_float = false } 
	      },
	  },
      },
    default_component_configs = 
      {
	indent = 
	{
	  with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
	  expander_collapsed = " ",
	  expander_expanded = " ",
	  expander_highlight = "NeoTreeExpander",
	},
      },
  },

  config = 
    function(_, opts)
      require("neo-tree").setup(opts)
    end,
}
