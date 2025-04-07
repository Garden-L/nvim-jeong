return
{
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
    
    },

  opts = {
    timeout = 1000,
    stages = 'static',
    blocking = false,
    messages = {
      timeout = 1000,
    },
    popupmenu = {
      timeout = 1000,
    },

    notify = {
      timeout = 1000,
    },

    commands = {
      errors = {
	timeout = 1000,
      },
      all = {
	timeout = 1000,
      }
    },
    mini = {
      timeout = 1000,
    }

    
  },

  config =
    function(_, opts)
      require("noice").setup(opts)
    end
}
