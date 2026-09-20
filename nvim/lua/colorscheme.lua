vim.cmd("colorscheme tender")
vim.g.lightline = { colorscheme = "tender" }

local palette = require("tender.palette").get()
vim.api.nvim_set_hl(0, "Operator", { fg = palette.text })
