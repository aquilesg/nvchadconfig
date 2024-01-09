local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "c",
    "cpp",
    "dockerfile",
    "hcl",
    "json",
    "markdown",
    "markdown_inline",
    "terraform",
    "yaml",
  },
  indent = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "stylua",
    "bash-language-server",
    "clangd",
    "docker-compose-language-service",
    "dockerfile-language-server",
    "gopls",
    "json-lsp",
    "pyright",
    "terraform-ls",
    "tflint",
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.cmp = {
  sources = {
    { name = "copilot" },
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "nvim_lua" },
    { name = "path" },
  },
}

return M
