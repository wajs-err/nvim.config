require('Comment').setup({
    padding = true,
    sticky = true,
    ignore = nil,
    toggler = {
        line = '<leader>c',
        block = '<leader>b'
    },
    opleader = {
        line = '<leader>c',
        block = '<leader>b'
    },
    extra = {
        above = nil,
        below = nil,
        eol = nil
    },
    mappings = {
        basic = true,
        extra = true,
        extended = false,
    },
    pre_hook = nil,
    post_hook = function(ctx)
        local r = unpack(vim.api.nvim_win_get_cursor(0))
        local rcnt = vim.api.nvim_buf_line_count(0)
        if rcnt > r then
            vim.api.nvim_win_set_cursor(0, {r+1,0})
        end
    end,
})
