local keymap = vim.keymap

-- Key leader
vim.g.mapleader = ','
-- Key Snippet
vim.g.UtilSnipsExpandTrigger='<tab>'
vim.g.user_emmet_leader_key='<leader>'
keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')
-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 's<left>', '<C-w>h')
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 's<right>', '<C-w>l')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

keymap.set('','<Space>n','<cmd> set nu! <CR>')
keymap.set('','<Space>rn','<cmd> set rnu! <CR>')

keymap.set('','<Space>tp','<cmd> tabprevius <CR>')
keymap.set('','<Space>tn','<cmd> tabnext <CR>')

keymap.set('n','<leader>w','<cmd> write <CR>')

-- NvimTree
keymap.set('n','<leader>e','<cmd> NvimTreeFocus <CR> ')
keymap.set('n','<C-n>','<cmd> NvimTreeToggle <CR>')

keymap.set('n','<leader>x',
  function()
    require("utils").close_buffer()
  end )
