return {
  'akinsho/toggleterm.nvim',

  opts =
  {
    open_mapping = [[<C-\>]],
    direction = "float", -- Set visual as floating
    float_opts =
    {
      border = "double",
    }
  },

  config = function(_, opts)
    require("toggleterm").setup(opts)
  end
}
