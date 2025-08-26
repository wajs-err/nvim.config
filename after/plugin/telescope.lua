local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

-- vim.keymap.set('n', '<leader>fb', require 'telescope'.extensions.file_browser.file_browser, {})

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fd', function()
    builtin.find_files({ hidden = true })
end)
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fb', ':Telescope file_browser path=%:p:h select_buffer=true<CR>', {})
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>', {})
vim.keymap.set('n', '<leader>gs', ':Telescope grep_string<CR>', {})
vim.keymap.set('n', '<leader>lg', ':Telescope live_grep<CR>', {})

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fd', function()
    builtin.find_files({ hidden = true })
end)
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fb', ':Telescope file_browser path=%:p:h select_buffer=true<CR>', {})
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>', {})
vim.keymap.set('n', '<leader>gs', ':Telescope grep_string<CR>', {})
vim.keymap.set('n', '<leader>gp', ':Telescope live_grep<CR>', {})
vim.keymap.set('n', '<leader>gr', ':Telescope lsp_references show_line=false include_current_line=true<CR>', {})
vim.keymap.set('n', '<leader>ga', ':Telescope arcadia_search<CR>', {})
vim.keymap.set('n', '<leader>gt', builtin.lsp_type_definitions, {})
vim.keymap.set('n', '<leader>tr', builtin.resume, {})

require('telescope').setup({
    defaults = {
        prompt_prefix = ' > ',
        initial_mode = 'insert',
        sorting_strategy = 'ascending',
        mappings = {
            i = {
                -- ['<ESC>'] = actions.close,
                ['<TAB>'] = actions.move_selection_next,
                ['<S-TAB>'] = actions.move_selection_previous,
            },
            n = {
                ['<ESC>'] = actions.close,
            }
        },
    },
    extensions = {
        file_browser = {
            hidden = { file_browser = true, folder_browser = true },
        },
        arcadia_search = {},
    },
})

require('telescope').load_extension('file_browser')
require('telescope').load_extension('arcadia_search')
-- require('telescope').load_extension('live_grep')
