vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

local function is_neotree_open()
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local buf = vim.api.nvim_win_get_buf(win)
    local ft = vim.api.nvim_buf_get_option(buf, "filetype")
    if ft == "neo-tree" then
      return true -- Neo-tree 창이 열려 있음
    end
  end
  return false -- Neo-tree 창이 열려 있지 않음
end
-- Neotree
map("n", "<leader>e", function ()
  -- 현재 활성 윈도우의 버퍼 타입 확인
  if is_neotree_open() then
    vim.cmd("Neotree close") -- Neo-tree 닫기
  else
    vim.cmd("Neotree focus")  -- Neo-tree 열기
  end
end)

-- pane navigation
map("n", "<C-h>", "<C-w>h")  -- left
map("n", "<C-j>", "<C-w>j")  -- up
map("n", "<C-k>", "<C-w>k")  -- down
map("n", "<C-l>", "<C-w>l")  -- right


-- clear search highlight
map("n", "<leader>h", ":nohlsearch<CR>")


-- telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")


map("n", "<leader>th", function()
	require("nvchad.themes").open()
end, { desc = "telescope nvchad themes" })

-- indent
map("v", "<", "<gv")
map("v", ">", ">gv")


-- lsp
map("n", "K", vim.lsp.buf.hover)
map("n", "gd", vim.lsp.buf.definition)
map("n", "<leader>ca", vim.lsp.buf.code_action)

-- tabbuf
map("n", "<tab>", function()
	  require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })

map("n", "<leader>x", function()
	  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })

-- terminal
map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })


-- new terminals
map("n", "<leader>h", function()
  require("nvchad.term").new { pos = "sp" }
  end, { desc = "terminal new horizontal term" })

map("n", "<leader>v", function()
    require("nvchad.term").new { pos = "vsp" }
    end, { desc = "terminal new vertical term" })



map("n", "<C-n>", function()

  local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
  require("menu").open("default")
end, {})

