local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<A-h>', '<Cmd>BufferLineCyclePrev<CR>', opts)
map('n', '<A-l>', '<Cmd>BufferLineCycleNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-[>', '<Cmd>BufferLineMovePrev<CR>', opts)
map('n', '<A-]>', '<Cmd>BufferLineMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoToBuffer 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoToBuffer 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoToBuffer 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoToBuffer 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoToBuffer 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoToBuffer 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoToBuffer 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoToBuffer 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoToBuffer 9<CR>', opts)
-- Close buffer
map('n', '<A-c>', '<Cmd>bdelete<CR>', opts)
