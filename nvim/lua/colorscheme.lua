vim.cmd("colorscheme tender")
vim.g.lightline = { colorscheme = "tender" }

local colors = require("colors")
vim.api.nvim_set_hl(0, "Operator", { fg = colors.text })
