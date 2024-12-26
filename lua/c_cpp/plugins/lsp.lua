return {
	{
		"williamboman/mason.nvim",
		config = function()
			require('mason').setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require('mason-lspconfig').setup({
				ensure_installed = { "lua_ls", "clangd", "cmake", "ts_ls" }
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		
		config = function() 
			local lspconfig = require('lspconfig')
			lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({
					default_config = {
							cmd = { 'clangd' },
							filetypes = { 'c', 'cpp', 'objc', 'objcpp', 'cuda', 'proto' },
							root_dir = function(fname)
								return util.root_pattern(
									'.clangd',
									'.clang-tidy',
									'.clang-format',
									'compile_commands.json',
									'compile_flags.txt',
									'configure.ac' -- AutoTools
								)(fname) or util.find_git_ancestor(fname)
							end,
							single_file_support = true,
							capabilities = {
								textDocument = {
									completion = {
										editsNearCursor = true,
									},
								},
								offsetEncoding = { 'utf-8', 'utf-16' },
							},
						},
						docs = {
							description = [[
					https://clangd.llvm.org/installation.html

					- **NOTE:** Clang >= 11 is recommended! See [#23](https://github.com/neovim/nvim-lspconfig/issues/23).
					- If `compile_commands.json` lives in a build directory, you should
						symlink it to the root of your source tree.
						```
						ln -s /path/to/myproject/build/compile_commands.json /path/to/myproject/
						```
					- clangd relies on a [JSON compilation database](https://clang.llvm.org/docs/JSONCompilationDatabase.html)
						specified as compile_commands.json, see https://clangd.llvm.org/installation#compile_commandsjson
					]],
						},
								})
			lspconfig.ts_ls.setup({})

			lspconfig.cmake.setup({
				default_config = {
					cmd = { 'cmake-language-server' },
					filetypes = { 'cmake' },
					root_dir = function(fname)
						return util.root_pattern('CMakePresets.json', 'CTestConfig.cmake', '.git', 'build', 'cmake')(fname)
					end,
					single_file_support = true,
					init_options = {
						buildDirectory = 'build',
					},
				},
				docs = {
					description = [[
				https://github.com/regen100/cmake-language-server

				CMake LSP Implementation
				]],
				},
			})
		end
	}
}
