return {
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    -- vim.g.vimtex_view_method = "zathura"
    vim.g.vimtex_view_method = "sioyek"
    -- vim.g.vimtex_view_general_viewer = 'SumatraPDF'
    -- vim.g.vimtex_compiler_progname = 'nvr'
    -- vim.g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
    -- vim.g.vimtex_view_general_options_latexmk = '-reuse-instance'
    vim.g.vimtex_compile_latexmk_engines = {
      ['_'] = '-xelatex',
    }
    vim.g.vimtex_quickfix_enabled = 0
    vim.g.vimtex_compiler_latexmk = {
        ['out_dir'] =  'build',
        ['aux_dir'] = 'build',
        ['continuous'] = '0',
        options = {
          "-shell-escape",
          "-verbose",
          "-file-line-error",
          "-synctex=1",
          "-interaction=nonstopmode",
        }
      }

      vim.keymap.set({ "n" }, "<F5>", "<plug>(vimtex-compile)", { silent = true })
      vim.keymap.set({ "n" }, "<F6>", "<plug>(vimtex-view)", { silent = true })
  end
}
