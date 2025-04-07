vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set


vim.keymap.set("n", "<leader>tn", function()
	local telescope = require('telescope.builtin')
	local actions = require('telescope.actions')
	local action_state = require('telescope.actions.state')

	telescope.find_files({
		prompt_title = "Search and Open in New Tab",
    cwd = vim.fn.getcwd(),
		previewer = false,
    attach_mappings = function(prompt_bufnr, map)
			actions.select_default:replace(function()
				-- Telescope 닫기
				actions.close(prompt_bufnr)

				-- 선택된 항목 가져오기
						-- 선택한 파일 경로
						local file_path = action_state.get_selected_entry().path
						
						if file_path then
							-- 새 탭에서 열기
							vim.cmd("tabedit " .. file_path)
						end
			end)
			return true
    end,
		layout_config = {
			width = 0.25,
			height = 0.25,
			prompt_position = "top",
		},
		sorting_strategy = "ascending",
})
end)

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

map("n", "<S-tab>", function()
	  require("nvchad.tabufline").prev()
end, { desc = "buffer goto prev" })

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
  require("menu").open(options)
end, {})
