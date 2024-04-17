local overrides = require "custom.configs.overrides"
local version   = require "mason.version"

---@type NvPluginSpec[]
local plugins   = {
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
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-live-grep-args.nvim",
    },
    opts = overrides.telescope,
  },
  {
    "hrsh7th/nvim-cmp",
    event = "VeryLazy",
    dependencies = {
      {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "Exafunction/codeium.nvim"
      },
    },
    opts = overrides.cmp,
  },
  -- Diagnostic stuff
  {
    "folke/trouble.nvim",
    cmd = {
      "Trouble",
      "TroubleToggle",
      "TroubleRefresh",
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("trouble").setup()
    end,
  },
  {
    "winston0410/range-highlight.nvim",
    event = "BufEnter",
    dependencies = { "winston0410/cmd-parser.nvim" },
    config = function()
      require("range-highlight").setup()
    end,
  },
  {
    "nvimdev/lspsaga.nvim",
    event = "LspAttach",
    cmd = {
      "Lspsaga"
    },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("lspsaga").setup({})
    end,
  },
  {
    "zeioth/garbage-day.nvim",
    dependencies = "neovim/nvim-lspconfig",
    event = "LspAttach",
    config = function()
      require("garbage-day").setup({
        excluded_lsp_clients = {
          "gopls",
        }
      })
    end,
  },
  -- Git control
  {
    "pwntester/octo.nvim",
    cmd = "Octo",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("custom.configs.octo")
    end,
  },
  {
    "sindrets/diffview.nvim",
    cmd = {
      "DiffviewOpen",
      "DiffviewClose",
      "DiffviewToggleFiles",
      "DiffviewFocusFiles",
      "DiffviewRefresh",
      "DiffviewFileHistory"
    },
  },
  {
    "FabijanZulj/blame.nvim",
    cmd = { "BlameToggle" },
    config = function()
      require("blame").setup()
    end
  },
  {
    'SuperBo/fugit2.nvim',
    opts = {},
    dependencies = {
      'MunifTanjim/nui.nvim',
      'nvim-tree/nvim-web-devicons',
      'nvim-lua/plenary.nvim',
      {
        'chrisgrieser/nvim-tinygit',
        dependencies = { 'stevearc/dressing.nvim' }
      },
    },
    cmd = { 'Fugit2', 'Fugit2Graph' },
    keys = {
      { '<leader>F', mode = 'n', '<cmd>Fugit2<cr>' }
    }
  },
  -- Lazy tools
  {
    "kdheepak/lazygit.nvim",
    cmd = "LazyGit",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  {
    "mgierada/lazydocker.nvim",
    dependencies = { "akinsho/toggleterm.nvim" },
    config = function()
      require("lazydocker").setup {}
    end,
    cmd = "Lazydocker",
  },
  -- AI
  {
    'Exafunction/codeium.nvim',
    event = "VeryLazy",
    config = function()
      require("codeium").setup({})
    end,
  },
  {
    "robitx/gp.nvim",
    cmd = {
      "GpChatToggle",
      "GpChatNew",
      "GpChatRespond",
      "GpChatFinder"
    },
    config = function()
      require("gp").setup()
    end,
  },
  -- Commands
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    config = function()
      require("custom.configs.noice")
    end,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "VeryLazy",
    config = function()
      require("todo-comments").setup()
    end,
  },
  {
    "folke/neodev.nvim",
    config = function()
      require("neodev").setup({
        library = {
          plugins = {
            "neotest",
            "nvim-dap-ui",
          },
          types = true
        },
      })
    end
  },
  {
    "karb94/neoscroll.nvim",
    event = "VeryLazy",
    config = function()
      require("neoscroll").setup()
    end,
  },
  -- Workspaces and session management
  {
    "epwalsh/obsidian.nvim",
    ft = "markdown",
    cmd = {
      "ObsidianOpen",
      "ObsidianNew",
      "ObsidianQuickSwitch",
      "ObsidianToday",
      "ObsidianYesterday",
      "ObsidianTomorrow",
      "ObsidianTemplate",
      "ObsidianSearch",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("custom.configs.obsidian")
    end,
    init = function()
      require("core.utils").load_mappings "obsidian"
    end,
  },
  {
    "natecraddock/workspaces.nvim",
    cmd = {
      "WorkspacesOpen",
      "WorkspacesAdd",
      "WorkspacesList",
      "WorkspacesDelete",
      "WorkspacesOpenWorkspace"
    },
    config = function()
      require("custom.configs.workspaces")
    end,
  },
  {
    "natecraddock/sessions.nvim",
    cmd = {
      "SessionsSave",
      "SessionsLoad",
      "SessionsStop",
    },
    config = function()
      require("custom.configs.sessions")
    end,
  },
  {
    "nvim-pack/nvim-spectre",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("spectre").setup()
    end,
  },
  {
    "kndndrj/nvim-dbee",
    cmd = {
      "Dbee"
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("dbee").setup()
    end,
  },
  -- Testing and debugging
  {
    "nvim-neotest/neotest",
    cmd = {
      "Neotest"
    },
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-neotest/neotest-python",
      "nvim-neotest/neotest-go",
    },
    config = function()
      require("custom.configs.neotest")
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "mfussenegger/nvim-dap-python",
      "leoluz/nvim-dap-go",
    },
    config = function()
      require("dapui").setup()
      require("custom.configs.nvim-dap")
    end,
    init = function()
      require("core.utils").load_mappings "dap"
    end,
  }
}
return plugins
