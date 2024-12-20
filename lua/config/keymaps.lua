local map = vim.keymap.set

-- better copy paste (using system clipboard by default)
map("v", "<leader>y", '"+y', { desc = "Copy to system clipboard." })
map("n", "<leader>y", '"+y', { desc = "Copy to system clipboard." })
map("n", "<leader>yy", '"+yg_', { desc = "Copy line to system clipboard." }) --until last non-blank character
map("n", "<leader>Y", '"+y$', { desc = "Copy selection to system clipboard." }) --include ending blank characters

map("n", "<leader>p", '"+p', { desc = "Paste below from system clipboard." })
map("n", "<leader>P", '"+P', { desc = "Paste above from system clipboard." })

-- better up/down
map({ "n", "" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- buffers
map("n", "<localleader>[", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "<localleader>]", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<localleader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })

-- windows
map("n", "<localleader>ww", "<C-W>p", { desc = "Other window", remap = true })
map("n", "<localleader>wd", "<C-W>c", { desc = "Delete window", remap = true })
map("n", "<localleader>ws", "<C-W>s", { desc = "Split window below", remap = true })
map("n", "<localleader>wv", "<C-W>v", { desc = "Split window right", remap = true })

-- tabs
map("n", "<localleader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
map("n", "<localleader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
map("n", "<localleader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
map("n", "<localleader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<localleader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
map("n", "<localleader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- Move Lines
map("n", "<S-Up>", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("n", "<S-Down>", "<cmd>m .+1<cr>==", { desc = "Move down" })
-- map("i", "<S-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
-- map("i", "<S-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<S-Up>", ":m '<-2<cr>gv=gv", { desc = "Move up" })
map("v", "<S-Down>", ":m '>+1<cr>gv=gv", { desc = "Move down" })

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

--Indent lines in visual mode
map("n", "<", "<<", {silent = true, noremap = true})
map("n", ">", ">>", {silent = true, noremap = true})
map("v", "<", "<gv", {silent = true, noremap = true})
map("v", ">", ">gv",{silent = true, noremap = true})

-- Toggle between relative and absolute line numbers
map("n", "<localleader>r", ":set rnu!<CR>", {silent=true})


-- Toggle quickfix window

-- function ToggleQuickfix()
--   local quickfix_open = false
--   for _, win in pairs(vim.fn.getwininfo()) do
--     if win.quickfix == 1 then
--       quickfix_open = true
--     end
--   end
--
--   if quickfix_open then
--     vim.cmd('cclose')
--   else
--     vim.cmd('copen 30')
--   end
-- end
-- map('n', '<leader>q', ':lua ToggleQuickfix()<CR>', { noremap = true, silent = true })
-- --clear quick fix window
-- map('n', '<leader>cq', ':cexpr [] | cclose<CR>', { noremap = true, silent = true })
-- Clear LSP diagnostics
vim.api.nvim_set_keymap('n', '<leader>cd', ':lua vim.diagnostic.reset(nil, 0)<CR>', { noremap = true, silent = true })



-- changing local working directory
map('n', '<leader>lcd', ':lcd %:p:h<CR>:lcd<CR>', { noremap = true, silent = true })
map('n', '<leader>cd', ':cd %:p:h<CR>:cd<CR>', { noremap = true, silent = true })



map('n', '<leader>so', ':source %<CR>', { noremap = true, silent = true })
