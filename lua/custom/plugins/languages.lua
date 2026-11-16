-- Configure Rust before loading its filetype plugin. rustaceanvim owns the
-- rust-analyzer client, so do not also enable it through mason-lspconfig.
vim.g.rustaceanvim = {
  server = {
    default_settings = {
      ['rust-analyzer'] = {
        check = { allTargets = false },
      },
    },
  },
}
vim.pack.add {
  { src = 'https://github.com/mrcjkb/rustaceanvim', version = vim.version.range '^9' },
  'https://github.com/meatballs/notebook.nvim',
}
require('notebook').setup()
