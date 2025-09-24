local M =
{
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup()

    local servers_config = require("lsp-servers")
    local server_names = vim.tbl_keys(servers_config.servers)

    require("mason-lspconfig").setup({
      ensure_installed = server_names,
    })

    local lspconfig = require("lspconfig")
    local capabilities = vim.lsp.protocol.make_client_capabilities()

    for server_name, server_config in pairs(servers_config.servers) do
      local config = server_config or {}
      lspconfig[server_name].setup(vim.tbl_extend("force", config, {
        capabilities = capabilities,
      }))
    end

    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(ev)
        local opts = { buffer = ev.buf }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
      end,
    })
    -- configures inline diagnostic hints
    vim.diagnostic.config({
      virtual_text = {
        enabled = true,
        source = "if_many", -- Show source if multiple sources
        prefix = "●", -- Could be '■', '▎', 'x', '●'
        spacing = 4,
        severity = { min = vim.diagnostic.severity.HINT },
      },
      signs = true,
      underline = true,
      severity_sort = true,
    })
  end,
}

return M
