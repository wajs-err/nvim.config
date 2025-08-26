vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'EdenEast/nightfox.nvim',

        config = function()
            require('nightfox').setup({
                options = {
                    transparent = true,
                    terminal_colors = false,
                    styles = {
                        functions = 'italic',
                        keywords = 'bold',
                    },
                },
            })
            vim.cmd('colorscheme carbonfox')
        end
    }

    -- some unused colorschemes:

    -- use({
    --     'projekt0n/github-nvim-theme', tag = 'v0.0.7',
    --     as = 'github-theme',
    --     config = function()
    --         require('github-theme').setup({
    --             theme_style = 'dark_default',
    --             function_style = 'italic',
    --             keyword_style = 'bold',
    --             transparent = true,
    --         })
    --
    --         vim.cmd('colorscheme github_dark')
    --     end
    -- })

    -- use({
    --     'themercorp/themer.lua',
    --     config = function()
    --         require('themer').setup({
    --             colorscheme = 'uwu',
    --             transparent = true,
    --         })
    --     end
    -- })

    -- use 'Abstract-IDE/Abstract-cs'

    -- use({
    --     'themercorp/themer.lua',
    --     config = function()
    --         require('themer').setup({
    --             colorscheme = 'kurai',
    --             transparent = true,
    --             styles = {
    --                 ['function'] = { style = 'italic' },
    --                 functionbuiltin = { style = 'italic' },
    --                 keyword = { style = 'bold' },
    --             },
    --         })
    --     end
    -- })

    -- use 'notken12/base46-colors'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use {
        'nvim-telescope/telescope-file-browser.nvim',
        requires = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' }
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        { run = ':TSUpdate' }
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            { 'neovim/nvim-lspconfig' },
            {
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' },

            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }

    use {
        'glepnir/dashboard-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' }
    }

    use {
        'numToStr/Comment.nvim'
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- use {
    --     'nvim-tree/nvim-tree.lua',
    --     requires = {
    --         'nvim-tree/nvim-web-devicons',
    --     }
    -- }

    -- use {
    --     'ellisonleao/glow.nvim',
    --     config = function()
    --         require('glow').setup()
    --     end
    -- }

    -- use {
    --     'meatballs/notebook.nvim',
    --     config = function()
    --         require('notebook').setup()
    --     end
    -- }

    use {
        'windwp/nvim-autopairs',
        config = function()
            require('nvim-autopairs').setup()
        end
    }

    -- use {
    --     'akinsho/toggleterm.nvim',
    --     tag = '*',
    --     config = function()
    --         require('toggleterm').setup({
    --             open_mapping = [[<C-_>]],
    --             direction = 'float',
    --             float_opts = {
    --                 border = 'curved',
    --                 width = math.floor(vim.api.nvim_win_get_width(0) * 0.9),
    --                 height = math.floor(vim.api.nvim_win_get_height(0) * 0.9),
    --                 winblend = 0,
    --             }
    --         })
    --     end
    -- }

    use {
        'p00f/clangd_extensions.nvim',
        config = function()
            require('clangd_extensions').setup({
                ast = {
                    role_icons = {
                        type = '🄣',
                        declaration = '🄓',
                        expression = '🄔',
                        statement = ';',
                        specifier = '🄢',
                        ['template argument'] = '🆃',
                    },
                    kind_icons = {
                        Compound = '🄲',
                        Recovery = '🅁',
                        TranslationUnit = '🅄',
                        PackExpansion = '🄿',
                        TemplateTypeParm = '🅃',
                        TemplateTemplateParm = '🅃',
                        TemplateParamObject = '🅃',
                    },
                    highlights = {
                        detail = 'Comment',
                    },
                },
                symbol_info = {
                    border = 'none',
                },
            })
        end
    }

    use {
        'folke/trouble.nvim',
        config = function()
            require('trouble').setup()
        end
    }

    -- use {
    --     'folke/which-key.nvim',
    --     config = function()
    --         vim.o.timeout = true
    --         vim.o.timeoutlen = 300
    --         require('which-key').setup {}
    --     end
    -- }

    -- use {
    --     'icholy/lsplinks.nvim',
    --     config = function()
    --         require('lsplinks').setup({
    --             highlight = true,
    --             hl_group = 'Underlined',
    --         })
    --         vim.keymap.set('n', 'gx', lsplinks.gx)
    --     end
    -- }

    -- use {
    --     'folke/twilight.nvim',
    --     config = function()
    --         require('twilight').setup {}
    --     end
    -- }

    use {
        'alec-gibson/nvim-tetris'
    }

    use {
        'shortcuts/no-neck-pain.nvim', tag = '*',
        config = function()
            require('no-neck-pain').setup({
                width = 120,
            })
        end
    }

    -- use { 'michaelb/sniprun', run = 'sh ./install.sh' }

    use {
        'SmiteshP/nvim-navbuddy',
        requires = {
            'neovim/nvim-lspconfig',
            'SmiteshP/nvim-navic',
            'MunifTanjim/nui.nvim',
            'numToStr/Comment.nvim',
            'nvim-telescope/telescope.nvim'
        }
    }

    use {
        '/home/alexeykovalev/arcadia_search'
    }

    use {
        'marcussimonsen/let-it-snow.nvim',
        config = function()
            require('let-it-snow').setup({
                cmd = 'LetItSnow',
            })
        end
    }

    use {
        'sphamba/smear-cursor.nvim',
        config = function()
            require('smear_cursor').setup {
                enabled = false,
                stiffness = 0.8,
                trailing_stiffness = 0.5,
                distance_stop_animating = 0.5,
                hide_target_hack = false,
                normal_bg = "#000000",
            }
        end
    }

    use {
        'Eandrju/cellular-automaton.nvim',
    }

    use {
        'nvim-treesitter/nvim-treesitter-textobjects',
        after = 'nvim-treesitter',
        requires = 'nvim-treesitter/nvim-treesitter',
    }

    use {
        'segoon/goto-arcanum.nvim'
    }

    use {
        'segoon/yaml-navigation.nvim',
        config = function()
            require('yaml-navigation').setup {}
        end
    }

    use {
        'b0o/schemastore.nvim'
    }

end)
