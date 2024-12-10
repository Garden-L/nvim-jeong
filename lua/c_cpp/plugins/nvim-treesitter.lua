return {
	"nvim-treesitter/nvim-treesitter", 
	build = ":TSUpdate",
	config = function () 
		local configs = require("nvim-treesitter.configs")

		configs.setup({
				ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query", }, -- 추후에 언어 추가 
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },  
			})
	end
}
