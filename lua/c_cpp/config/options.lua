vim.cmd("let g:loaded_netrw = 0")
vim.cmd("let g:loaded_netrwPlugin = 0")

local o = vim.opt

o.relativenumber = true
o.number = true

o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2
o.expandtab = true
o.autoindent = true

o.wrap = false

o.ignorecase = true
o.smartcase = true

o.cursorline = true

o.signcolumn = "yes"

o.scrolloff = 10
o.encoding = "UTF-8"
o.cmdheight = 1

o.mouse:append("a")
