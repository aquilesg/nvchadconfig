require("neodev").setup({})
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  "arduino_language_server",
  "ansiblels",
  "lua_ls",
  "bashls",
  "clangd",
  "dockerls",
  "docker_compose_language_service",
  "gopls",
  "graphql",
  "jsonls",
  "pylsp",
  "ruby_ls",
  "sqlls",
  "terraformls",
  "tflint",
  "tsserver",
  "yamlls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.pylsp.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    pylsp = {
      plugins = {
        flake8 = {
          enabled = true
        },
        pylint = {
          enabled = true
        }
      }
    }
  }
}

lspconfig.sqlls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { 'sql' },
  root_dir = function(_)
    return vim.loop.cwd()
  end,
}
