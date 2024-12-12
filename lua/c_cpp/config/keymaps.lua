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
-- tab
map("n", "<leader>tt", "<cmd>tabnext<cr>")
map("n", "<leader>tT", "<cmd>tabprev<cr>")
map("n", "<leader>tn", "<cmd>tabnew %:p<cr>")
map("n", "<leader>tc", "<cmd>tabclose<cr>")

vim.keymap.set("n", "<leader>ui", function()
	vim.ui.input({prompt="tba name", relative='editor', position='center'}, function(input) 
		if input and input ~="" then
			vim.cmd("tabnew " .. input)
		else 
			vim.cmd("tabnew %:p")
		end
	end)
end
)

-- Neotree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree focus window" })

-- pane navigation
map("n", "<C-h>", "<C-w>h")  -- left
map("n", "<C-j>", "<C-w>j")  -- up
map("n", "<C-k>", "<C-w>k")  -- down
map("n", "<C-l>", "<C-w>l")  -- right


-- clear search highlight
map("n", "<leader>l", ":nohlsearch<CR>")


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

