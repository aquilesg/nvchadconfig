local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "dockerfile",
    "javascript",
    "typescript",
    "c",
    "cpp",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "stylua",
    "clangd",
    "dockerfile-language-server-nodejs",
    "docker-compose-language-server-nodejs",
    "gopls",
    "jsonls",
    "pyright",
    "terraform-ls",
    "tflint"
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
