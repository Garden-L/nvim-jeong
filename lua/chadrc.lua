local M = {}

M.base46 = {
  theme = "chadracula",
  transparency = true,
}

M.ui = {
  tabufline = {
    order = { "treeOffset", "buffers", "tabs", "btns", "abc" },
    modules = {
      abc = function()
        return "hi"
      end,
    },
  },
}

return M
