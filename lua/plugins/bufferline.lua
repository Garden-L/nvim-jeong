return
{
  'akinsho/bufferline.nvim',
  dependencies = 'nvim-tree/nvim-web-devicons',

  config =
    function(_, opts)
      require("bufferline").setup(opts)
      -- vim.keymap.set('n', 'gb', '<CMD>BufferLinePick<CR>')
      vim.keymap.set('n', '<leader>x', '<CMD>BufferLinePickClose<CR>')
      vim.keymap.set('n', '<S-l>', '<CMD>BufferLineCycleNext<CR>')
      vim.keymap.set('n', '<S-h>', '<CMD>BufferLineCyclePrev<CR>')
      -- vim.keymap.set('n', '<S-h]>', '<CMD>BufferLineMoveNext<CR>')
      -- vim.keymap.set('n', '<S-l>', '<CMD>BufferLineMovePrev<CR>')
      -- vim.keymap.set('n', 'gs', '<CMD>BufferLineSortByDirectory<CR>')
    end
}
