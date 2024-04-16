require("neodev").setup({})
local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

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
  local opts = {
    on_init = on_init,
    on_attach = on_attach,
    capabilities = capabilities,
  }

  if lsp == "sqlls" then
    opts.filetypes = { 'sql' }
    opts.root_dir = function(_)
      return vim.loop.cwd()
    end
  end

  if lsp == "pylsp" then
    opts.settings = {
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
  end

  lspconfig[lsp].setup(opts)
end
