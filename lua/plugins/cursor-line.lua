return
{
  "ya2s/nvim-cursorline",
  opts =
    {
      cursorline =
      {
	enable = true,
	timeout= 0,
      },
      cursorword = {
	enable = true,
	min_length = 3,
	hl = { underline = true },
      }
    },

  config =
    function (_, opts)
      require('nvim-cursorline').setup(opts)
    end
}
