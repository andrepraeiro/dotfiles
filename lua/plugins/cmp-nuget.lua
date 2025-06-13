require("table")
return {
    {
        "nvim-lua/plenary.nvim",
    },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "PasiBergman/cmp-nuget",
        },

        opts = function(_, opts)
            local nuget = require("cmp-nuget")
            nuget.setup({})

            opts.sources = {}
            opts.formatting = {}
            table.insert(opts.sources, 1, { name = "nuget" })

            opts.formatting.format = function(entry, vim_item)
                if entry.source.name == "nuget" then
                    vim_item.kind = "NuGet"
                end
                return vim_item
            end
        end,
    },
}
