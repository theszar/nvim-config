-- Plugin Application: A pretty list for showing diagnostics, references,
--                    telescope results, quickfix and location lists to help you solve 
--                    all the trouble your code
return {
  "folke/trouble.nvim",
  cmd = { "Trouble" },
  opts = {
    focus = true,
    modes = {
      lsp = {
        win = { position = "right" },
      },
    },
  },
  keys = {
    { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)" },
    { "<leader>zz", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics (Trouble)" },
    { "<leader>ss", "<cmd>Trouble symbols toggle<cr>", desc = "Symbols (Trouble)" },
    { "<leader>kk", "<cmd>Trouble lsp toggle<cr>", desc = "LSP references/definitions/... (Trouble)" },
    { "<leader>ll", "<cmd>Trouble loclist toggle<cr>", desc = "Location List (Trouble)" },
    { "<leader>qq", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List (Trouble)" },
    {
      "[q",
      function()
        if require("trouble").is_open() then
          require("trouble").prev({ skip_groups = true, jump = true })
        else
          local ok, err = pcall(vim.cmd.cprev)
          if not ok then
            vim.notify(err, vim.log.levels.ERROR)
          end
        end
      end,
      desc = "Previous Trouble/Quickfix Item",
    },
    {
      "]q",
      function()
        if require("trouble").is_open() then
          require("trouble").next({ skip_groups = true, jump = true })
        else
          local ok, err = pcall(vim.cmd.cnext)
          if not ok then
            vim.notify(err, vim.log.levels.ERROR)
          end
        end
      end,
      desc = "Next Trouble/Quickfix Item",
    },
  },
}
