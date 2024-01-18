vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

vim.cmd.colorscheme "retrobox"

vim.keymap.set('n', '<leader>dupa', function() print("Dupa xD") end, {desc="Dupa xD"})
vim.keymap.set('n', '<leader>d', '', {desc='asdf'})
vim.keymap.set('n', '<c-k><c-o>', ':ClangdSwitchSourceHeader<cr>', {desc='Switch header/source'})


local opts = {}
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts) 
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)

vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

vim.keymap.set({ 'n', 'v' }, '<c-k><c-a>', vim.lsp.buf.code_action, opts)
