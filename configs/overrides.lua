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
    "typescript-language-server",
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },
  filters = {
    git_ignored = false,
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
    { name = "copilot",  group_index = 2,  priority = 75 },
    { name = "nvim_lsp", group_index = 2,  priority = 100 },
    { name = "buffer",   group_index = 2,  priority = 50 },
    { name = "path",     group_index = 2,  priority = 50 },
    { name = "nvim_lua", group_index = 2 },
    { name = "luasnip",  group_index = 2 },
  },
  mapping = {
    ["<CR>"] = nil
  }
}

return M
