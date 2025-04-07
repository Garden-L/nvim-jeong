-- Snacks는 여러 윈도우로 전환해준다.
return
{
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
   keys =
   {
     {
       --Mapping the explorer.
       "<leader>e",
       function()
	-- Snacks.explorer()
	require("snacks.explorer").open()
       end
     }
   },

  opts =
  {
    explorer = { enabled = true },
    dashboard = { enabled = true },
    picker = {
      sources = {

        explorer = {
	  auto_close = false,
	  git_untracked = false,
	  git_status_open = true,
	  diagnostics = true,
	  jump = { close = false },
	  layout =
	  {
	    preset = "sidebar",
	    preview = false,
	  },
	  win =
	  {
	    list =
	    {
	      ["<CR>"] = "confirm",

	    }
	  },
        },

	git_files = {
	  finder = "git_files",
	  show_empty = true,
	  format = "file",
	  untracked = true,
	  submodules = false,
	}
      }
    }
  },

  config = 
    function (_, opts)
      require("snacks").setup(opts)

    end
}
