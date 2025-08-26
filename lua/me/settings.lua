local o = vim.o
local opt = vim.opt

o.expandtab = true
o.smarttab = true
o.smartindent = true
o.tabstop = 8
o.softtabstop = 0
o.shiftwidth = 4

o.wrap = false

o.cmdheight = 0

o.scrolloff = 0

o.whichwrap = "b,s,<,>,[,],h,l"

o.signcolumn = "no"

o.guicursor = "n-v-c-i:ver25"

opt.clipboard = "unnamedplus"
opt.ignorecase = true
opt.smartcase = true
-- opt.cursorline = true

opt.splitright = true

-- opt.spelllang = { "en_us", "ru" }
opt.spell = true

opt.number = true
opt.relativenumber = true
