return {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    -- dependencies = { "nvim-tree/nvim-web-devicons" },
    -- or if using mini.icons/mini.nvim
    dependencies = { "echasnovski/mini.icons" },
    opts = {},
    keys = {
        {
            '<leader>ff',
            function()
                require 'fzf-lua'.files()
            end,
            desc = 'Find files in project directory'
        },
        {
            '<leader>fg',
            function()
                require 'fzf-lua'.live_grep()
            end,
            desc = 'Find by grepping in project directory'
        },
        {
            '<leader>fc',
            function()
                require 'fzf-lua'.live_grep({ cwd = vim.fn.stdpath('config') })
            end,
            desc = 'Find in neovim configuration'
        },
        {
            '<leader>fh',
            function()
                require 'fzf-lua'.helptags()
            end,
            desc = 'Find help tags'
        },
        {
            '<leader>fk',
            function()
                require 'fzf-lua'.keymaps()
            end,
            desc = 'Find Keymaps'
        },
        {
            '<leader>fb',
            function()
                require 'fzf-lua'.builtin()
            end,
            desc = 'Find Builtin'
        },
        {
            '<leader><leader>',
            function()
                require 'fzf-lua'.buffers()
            end,
            desc = 'Find Builtin'
        },
    },

}
