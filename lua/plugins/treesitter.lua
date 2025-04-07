return
{
  "nvim-treesitter/nvim-treesitter",

  opts =
    {
      ensure_installed =
	{
	  "lua",
	  "c",
	  "cpp",
	},
    },

  config =
    function(_, opts)
      require("nvim-treesitter").setup(opts)
    end
}
