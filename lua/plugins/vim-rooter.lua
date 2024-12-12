--Plugin Application: set current working directory to parent folder of the file
return {
  -- Other plugins...

  {
    "airblade/vim-rooter",
    config = function()
      -- Configure vim-rooter behavior
      vim.g.rooter_patterns = { ".git", "Makefile", "package.json" } -- Customize root patterns
      vim.g.rooter_manual_only = 0 -- Automatically change the working directory
      vim.g.rooter_silent_chdir = 1 -- Suppress messages when changing directories
    end,
  },
}
