require("neodev").setup({})
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  "lua_ls",
  "bashls",
  "clangd",
  "dockerls",
  "docker_compose_language_service",
  "gopls",
  "jsonls",
  "pyright",
  "ruby_ls",
  "sqlls",
  "terraformls",
  "tflint",
  "tsserver",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.pyright.setup {
  settings = {
    pyright = {
      autoImportCompletion = true,
      verboseOutput = true,
      reportUnusedImport = "information",
      reportUnusedVariable = "information",
      reportDuplicateImport = "error",
    },
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "openFilesOnly",
        useLibraryCodeForTypes = true,
        typeCheckingMode = "off",
      },
    },
  },
}

lspconfig.sqlls.setup {
  capabilities = capabilities,
  filetypes = { 'sql' },
  root_dir = function(_)
    return vim.loop.cwd()
  end,
}
