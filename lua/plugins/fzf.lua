return
{
  "ibhagwan/fzf-lua",

  dependencies = { "nvim-tree/nvim-web-devicons" },

  opts = {},

  config =
    function()
      require("fzf-lua").setup({})

      local map = vim.keymap.set

      -- Set tab
      map("n", "gd", "<cmd>FzfLua lsp_definitions<cr>")
      map("n", "gD", "<cmd>FzfLua lsp_declarations<cr>")
    end
}
