vim.api.nvim_set_keymap('i', 'ii', '<Esc>', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>x', ':bd<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>z', ':q!<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>e', ':wq<CR>', { noremap = true })

vim.api.nvim_set_keymap('n', '<c-h>', '<c-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-j>', '<c-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-k>', '<c-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-l>', '<c-w>l', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>1', ':bnext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>2', ':bprev<CR>', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader><', '10<c-w><', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>>', '10<c-w>>', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>nt', ':Ex<CR>', { noremap = true })

