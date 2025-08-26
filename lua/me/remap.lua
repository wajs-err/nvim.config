local keymap = vim.keymap

vim.g.mapleader = " "

keymap.set('n', '<leader>q', ':q<CR>')
keymap.set('n', '<leader>w', ':w<CR>')

keymap.set("n", "<Esc>", ":nohl<CR>")

keymap.set('n', '<S-Up>', ':m-2<CR>==', {silent = true})
keymap.set('n', '<S-Down>', ':m+0<CR>==', {silent = true})

keymap.set('i', '<S-Up>', '<Esc>:m-2<CR>==gi', {silent = true})
keymap.set('i', '<S-Down>', '<Esc>:m+1<CR>==gi', {silent = true})

keymap.set('v', '<S-Up>', ':\'<,\'>m\'<-2<CR>gvgv', {silent = true})
keymap.set('v', '<S-Down>', ':\'<,\'>m\'>+1<CR>gvgv', {silent = true})

keymap.set('n', '<C-j>', '<C-w>w')
keymap.set('n', '<C-k>', '<C-w>W')

keymap.set('n', '<C-l>', '<C-w><C->>')
keymap.set('n', '<C-h>', '<C-w><C-<>')
-- keymap.set('n', '<C-s>', '<C-w><C-x>')

keymap.set('v', '>', '>gv')
keymap.set('v', '<', '<gv')

-- keymap.set('n', 'U', '<C-R>')

keymap.set('n', 'vs', ':vs<CR>')
keymap.set('n', 'sv', ':sv<CR>')

keymap.set('n', '<leader>nnp', ':NoNeckPain<CR>')

keymap.set('t', '<Esc>', '<C-\\><C-n>')

keymap.set('n', '<leader>e', ':e<CR>')

-- keymap.set('v', 'p', '"0p')
