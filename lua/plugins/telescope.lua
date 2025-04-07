return {
  'nvim-telescope/telescope.nvim',

  dependencies =
  {
    "nvim-lua/plenary.nvim" ,
    { 
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
  },

  keys =
  {
    {
      "<leader>ff",
      "<cmd>Telescope find_files<cr>",
      desc = "Find files"
    },
    {
      "<leader>fg",
      "<cmd>Telescope live_grep<cr>",
      desc = "Find grep files"
    },
  },

  opts =
    function()
      local actions = require("telescope.actions")

      return 
      {
	defaults = 
	{
	   mappings =
	   {
	     i = 
		 {
		    ["<C-k>"] = actions.move_selection_previous,
		    ["<C-j>"] = actions.move_selection_next,
		 },
	   },
	}
      }
    end,

  config =
    function(_, opts)
      require("telescope").setup(opts)
    end
}
