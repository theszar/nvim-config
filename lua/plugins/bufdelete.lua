return {
  'famiu/bufdelete.nvim',
 config = function()
  --Delete buffers without closing windows buffdelete plugin
  vim.keymap.set("n", "<localleader>d", ":Bdelete<CR>", {silent=true})
  vim.keymap.set("n", "<localleader>q", ":Bdelete!<CR>", {silent=true})
 end,
}
