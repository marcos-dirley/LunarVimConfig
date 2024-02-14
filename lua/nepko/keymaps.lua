local nm = lvim.keys.normal_mode
local vm = lvim.keys.visual_mode
local im = lvim.keys.insert_mode
local tm = lvim.keys.terminal_mode
local map = vim.api.nvim_set_keymap

-- Tab navigation
lvim.keys.normal_mode["<S-h>"] = ":bprevious<CR>"
lvim.keys.normal_mode["<S-l>"] = ":bnext<CR>"

-- Pasting into line under or line above.
nm["<Space><S-p>b"] = ":pu<cr>"
nm["<Space><S-p>a"] = ":pu!<cr>"

-- Getting the current buffer path into my clipboard
nm["<Space>yb"] = ":let @+=@%<cr>"

-- Easier command mode
nm[";"] = ":"

-- Copy to clipboard
-- nm["<leader>yy"] '"+y'
-- nm["<leader>yY"] '"+yg_'
-- vm["<leader>y"] = '"+y'

-- Paste from clipboard
-- nm["<leader>PP"] = '"+P'
-- nm["<leader>Pp"] = '"+p'
-- vm["<leader>Pp"] = '"+p'
-- vm["<leader>PP"] = '"+P'

nm["z<S-n>"] = require('ufo').openAllFolds
