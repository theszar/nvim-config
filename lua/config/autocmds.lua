local function augroup(name)
  return vim.api.nvim_create_augroup(name, { clear = true })
end
-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup("highlight_yank"),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- resize splits if window got resized
vim.api.nvim_create_autocmd({ "VimResized" }, {
  group = augroup("resize_splits"),
  callback = function()
    local current_tab = vim.fn.tabpagenr()
    vim.cmd("tabdo wincmd =")
    vim.cmd("tabnext " .. current_tab)
  end,
})

-- change local working directory on buffer enter

-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = "*", -- Apply to all files
--   callback = function()
--     local file_dir = vim.fn.expand("%:p:h") -- Get the file's directory
--     if file_dir ~= "" and vim.fn.isdirectory(file_dir) == 1 then
--       vim.cmd("lcd " .. file_dir) -- Change the local working directory
--     end
--   end,
-- })
