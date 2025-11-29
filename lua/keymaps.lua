local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- ノーマルモードでのキーマップ
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)

vim.keymap.set('i', 'jk', '<ESC>')
vim.keymap.set('i', 'jj', '<ESC>')

vim.keymap.set('n', 'J', '10j')
vim.keymap.set('n', 'K', '10k')
vim.keymap.set('n', 'H', '0')
vim.keymap.set('n', 'L', '$')
