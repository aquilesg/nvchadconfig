local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        "zbirenbaum/copilot-cmp",
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
      },
    },
    opts = overrides.cmp,
  },

  -- Custom plugins
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "jackMort/ChatGPT.nvim",
    cmd = {
      "ChatGPT",
      "ChatGPTEditWithInstructions",
      "ChatGPTActAs",
      "ChatGPTCompleteCode",
      "ChatGPTRun",
    },
    config = function()
      require("chatgpt").setup {
        api_key_cmd = "cat ~/.ssh/gpt3_api_key.txt",
        openai_params = {
          model = "gpt-4",
        },
        openai_edit_params = {
          model = "gpt-4",
        },
      }
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
  {
    "piersolenski/wtf.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    opts = {},
    event = "VeryLazy",
    config = function()
      require("wtf").setup {
        hooks = {
          request_started = function()
            vim.cmd "hi StatusLine ctermbg=NONE ctermfg=yellow"
          end,
          request_finished = vim.schedule_wrap(function()
            vim.cmd "hi StatusLine ctermbg=NONE ctermfg=NONE"
          end),
        },
      }
    end,
  },
  {
    "folke/trouble.nvim",
    event = "BufEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    config = function()
      require("trouble").setup()
    end,
  },
  {
    "winston0410/range-highlight.nvim",
    event = "BufEnter",
    dependencies = { "winston0410/cmd-parser.nvim" },
    opts = {},
    config = function()
      require("range-highlight").setup()
    end,
  },
  {
    "pwntester/octo.nvim",
    cmd = "Octo",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("octo").setup()
    end,
  },
  {
    "aaronhallaert/advanced-git-search.nvim",
    cmd = "AdvancedGitSearch",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "tpope/vim-fugitive",
      "tpope/vim-rhubarb",
    },
    config = function()
      require("telescope").load_extension "advanced_git_search"
    end,
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup {
        suggestion = { enabled = false },
        panel = { enabled = false },
      }
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    config = function()
      require("copilot_cmp").setup()
    end,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {},
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    config = function()
      require("noice").setup {
        lsp = {
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true,
          },
          hover = {
            enabled = false,
          },
          signature = {
            enabled = false,
          },
        },
        presets = {
          bottom_search = true,
          command_palette = true,
          long_message_to_split = true,
          inc_rename = false,
          lsp_doc_border = true,
        },
      }
    end,
  },
  {
    "lukas-reineke/headlines.nvim",
    event = "BufRead",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("headlines").setup()
    end,
  },
  {
    "gelguy/wilder.nvim",
    event = "VeryLazy",
    config = function()
      require("wilder").setup()
    end,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "VeryLazy",
    opts = {},
    config = function()
      require("todo-comments").setup()
    end,
  },
}

return plugins
