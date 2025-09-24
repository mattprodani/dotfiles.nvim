return {
  'mrcjkb/rustaceanvim',
  version = '^6',
  lazy = false, -- This plugin is already lazy
  ft = { 'rust' },
  config = function()
    vim.g.rustacean = {
      server = {
        capabilities = require('cmp_nvim_lsp').default_capabilities(),
      },
    }
  end,
}
