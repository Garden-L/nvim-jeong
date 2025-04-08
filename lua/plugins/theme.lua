return
{
  "Mofiqul/dracula.nvim",
  opts =
  {
    colors =
    {
    }
  },
  config =
    function(_, opts)
      require("dracula").setup(opts)
      vim.cmd[[colorscheme dracula]]
      vim.api.nvim_set_hl(0, "CursorLine", {bg="#56674f", blend=30})
      vim.api.nvim_set_hl(0, "Visual", {bg="#56674f"})
      vim.api.nvim_set_hl(0, "VisualNOS", {bg="#56674f"})
    end
}
