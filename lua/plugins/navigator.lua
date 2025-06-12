-- return {}
return {
    {
        "ray-x/guihua.lua",
        opts = {},
        run = "cd lua/fzy && make",
    },
    {
        "ray-x/navigator.lua",
        dependencies = { "guihua.lua" },
        config = true,
    },
}
