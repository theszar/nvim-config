return {
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    -- vim.g.vimtex_view_method = "zathura"
    -- vim.g.vimtex_view_method = "sioyek"
    vim.g.vimtex_view_general_viewer = 'SumatraPDF'
    vim.g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
    vim.g.vimtex_compiler_method = 'latexmk'
    vim.g.vimtex_compiler_latexmk_engines = {
      ['_'] = '-xelatex',
    }
    vim.g.vimtex_quickfix_enabled = 1
    vim.g.vimtex_quickfix_method = 'pplatex'
    vim.g.vimtex_quickfix_mode = 2
    vim.g.vimtex_compiler_latexmk = {
        ['out_dir'] =  'build',
        ['aux_dir'] = 'build',
        ['continuous'] = '1',
        options = {
          "-shell-escape",
          "-verbose",
          "-file-line-error",
          "-synctex=1",
          "-interaction=nonstopmode",
        }
      }

      vim.keymap.set({ "n" }, "<F5>", "<plug>(vimtex-toggle-main) | <plug>(vimtex-compile-ss)", { silent = true })
      vim.keymap.set({ "n" }, "<F6>", "<plug>(vimtex-view)", { silent = true })
  end
}
