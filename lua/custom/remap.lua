vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('x', '<leader>p', '"_dP')

-- yank to system clipboard
vim.keymap.set('n', '<leader>y', '"+y')

vim.keymap.set('n', 'Q', '<nop>')

vim.keymap.set('n', '<leader>sr', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = '[S]earch [R]eplace all in Buffer' })

-- Harpoon keymaps
local mark = require 'harpoon.mark'
local ui = require 'harpoon.ui'

vim.keymap.set('n', '<leader>h', mark.add_file, { desc = '[A]dd Harpoon Mark' })
vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu, { desc = 'Toggle Harpoon Quick Menu' })

vim.keymap.set('n', '<A-1>', function()
  ui.nav_file(1)
end)
vim.keymap.set('n', '<A-2>', function()
  ui.nav_file(2)
end)
vim.keymap.set('n', '<A-3>', function()
  ui.nav_file(3)
end)
vim.keymap.set('n', '<A-4>', function()
  ui.nav_file(4)
end)
