local M = {}

M.treesitter = {
  ensure_installed = {
    "c",
    "cpp",
    "dockerfile",
    "hcl",
    "json",
    "lua",
    "markdown",
    "markdown_inline",
    "terraform",
    "vim",
    "vimdoc",
    "yaml",
  },
  indent = {
    enable = true,
  },
  highlight = {
    enable = true,
  },
}

M.telescope = {
  pickers = {
    live_grep = {
      additional_args = function()
        return { "--hidden" }
      end,
    },
  }
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
    "ruby-ls",
    "shellcheck",
    "terraform-ls",
    "tflint",
    "typescript-language-server",
    "write-good"
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

local cmp = require("cmp")

M.cmp = {
  sources = {
    { name = "copilot",  group_index = 2, priority = 75 },
    { name = "nvim_lsp", group_index = 2, priority = 100 },
    { name = "buffer",   group_index = 2, priority = 50 },
    { name = "path",     group_index = 2, priority = 50 },
    { name = "nvim_lua", group_index = 2, priority = 50 },
    { name = "luasnip",  group_index = 2, priority = 50 },
    { name = "git",      group_index = 2, priority = 50 }
  },
  mapping = {
    ["<C-y>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    },
    ["<CR>"] = cmp.config.disable,
  },
  preselect = cmp.PreselectMode.None,
}

cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  source = {
    { name = 'buffer' },
  }
})

cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'cmdline' },
    { name = 'path' },
  }),
})

return M
