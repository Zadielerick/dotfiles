-- Important first settings
vim.g.mapleader = ' ' -- Set <space> as the leader key
vim.g.maplocalleader = ' ' -- NOTE: It must be configured before plugins are loaded

vim.g.have_nerd_font = false -- Set true if nerd font is used in terminal

-- VIM general settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.showmode = false
vim.opt.breakindent = true -- When lines wrap, indent to match previous line
vim.opt.undofile = true -- Save undo history
vim.opt.updatetime = 250 -- Save to buffer after <updatetime> ms of inactivity
vim.opt.timeoutlen = 300 -- How long to wait for map sequence, otherwise show which-key

-- Indentation settings
vim.opt.shiftwidth = 2 -- Width of a shift
vim.opt.tabstop = 2 -- Maximum width of tab character
vim.opt.softtabstop = 0 -- Disabled to keep <Tab> as tabstop width
vim.opt.expandtab = false -- Expand tabs into spaces
vim.opt.smartindent = true -- Auto-indent on new-lines (like function brackets)

vim.opt.list = true -- Show whitespace characters
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.inccommand = 'split' -- Show previews in new window
vim.opt.cursorline = true
vim.opt.scrolloff = 10 -- Lines to keep above or below cursor

-- Basic Keymaps
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>') -- Clear highlights on search by hitting <Esc>
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
-- vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Learn the hard way
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Shortcut for moving windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Autocommands
-- Highlight text that is copied, doesn't seem to do much right now
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Lazy Plugins
require "plugins"
