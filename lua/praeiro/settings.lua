

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.signcolumn = 'yes'

vim.opt.smartindent = true
vim. opt.autoindent = true

vim.opt.cursorline =true

vim.opt.showmode = false
vim.opt.mouse='a'

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = ".vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true

vim.diagnostic.config({ virtual_text = true })

vim.opt.scrolloff = 8
vim.opt.isfname:append('@-@')
vim.opt.updatetime = 50

vim.opt.colorcolumn = '120'

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = { tab = ">> ", trail = "•", nbsp = "␣"}

vim.opt.inccommand = "split"
vim.opt.cmdheight = 0


vim.api.nvim_create_autocmd('TextYankPost',{
    group = vim.api.nvim_create_augroup("YankHighlight", {clear = true}),
    pattern='*',
    callback=function()
        vim.highlight.on_yank()
    end,
    desc='Highlight yank'
})

-- fold
-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
-- vim.opt.foldtext = ""
-- vim.opt.foldlevel = 99
-- vim.opt.foldlevelstart = 1
-- vim.opt.foldnestmax = 4
