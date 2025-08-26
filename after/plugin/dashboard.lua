local db = require("dashboard")

local color = '#'
for _ = 0, 5 do
    local r = math.random(0, 15)
    if r <= 10 then
        color = color .. string.char(math.random(48, 57))
    else
       color = color .. string.char(math.random(97, 102))
    end
end

vim.api.nvim_set_hl(0, 'Dashboardheader', { fg = color --[['#d39b17' '#9b17d4']] })

-- local handle = assert(io.popen('pokeget random'))
-- local output = handle:read("*a")
-- print(output)
--
-- local t = {}
-- for i, line in string.gmatch(output, '\n') do
--   t[i] = line
-- end
--
-- handle:close()

db.setup({
    theme = 'doom',
    config = {
      header = {
       --     "",
       --     "",
       --     "",
       --     "",
       --     " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
       --     " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
       --     " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
       --     " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
       --     " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
       --     " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
       --     "",
       --     "",
       --     "",
       --     "",
       --     "",
       -- },

            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                     ]],
            [[       ████ ██████           █████      ██                     ]],
            [[      ███████████             █████                             ]],
            [[      █████████ ███████████████████ ███   ███████████   ]],
            [[     █████████  ███    █████████████ █████ ██████████████   ]],
            [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
            [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
            [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],

        },
        center = {
            {
                desc = 'Find File                 ',
                desc_hl = 'String',
                key = 'f',
                key_hl = 'Number',
                action = 'Telescope find_files find_command=rg,--hidden,--files'
            },
            {
                desc = 'Recently opened files     ',
                desc_hl = 'String',
                key = 'r',
                key_hl = 'Number',
                action = 'Telescope oldfiles'
            },
            {
                desc = 'File browser              ',
		desc_hl = 'String',
                key = 'b',
               key_hl = 'Number',
                action = "Telescope file_browser",
            },
            {
                desc = 'New file                  ',
                desc_hl = 'String',
                key = 'e',
                key_hl = 'Number',
                action = 'enew',
            },
        },
        footer = {}
    }
})
