---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<leader>n"] = { "<cmd> GpChatNew <CR>", "New GPT chat", opts = { nowait = true } },
    ["<leader>1"] = { "<cmd> GpChatRespond <CR>", "Respond to chat", opts = { nowait = true } },

    -- Allow Override the telescope to show hidden files
    ["<leader>ff"] = { "<cmd> Telescope find_files hidden=true <CR>", "File search", opts = { nowait = true } },

    -- Symbol outlines
    ["<leader>ca"] = { "<cmd> Lspsaga code_action <CR>", "Open Code Actions", opts = { nowait = true } },

    -- Term toggle
    ["<A-i>"] = { "<cmd> Lspsaga term_toggle <CR>", "Open terminal" },

    -- Obsidian Commands
    ["<leader>ot"] = { "<cmd> ObsidianToday <CR>", "Open today's note", opts = { nowait = true } },
    ["<leader>ow"] = { "<cmd> ObsidianTomorrow <CR>", "Open tomorrows's note", opts = { nowait = true } },
    ["<leader>oy"] = { "<cmd> ObsidianYesterday <CR>", "Open yesterday's note", opts = { nowait = true } },
    ["<leader>on"] = { "<cmd> ObsidianNew <CR>", "Create new Obsidian note", opts = { nowait = true } },
    ["<leader>os"] = { "<cmd> ObsidianSearch <CR>", "Search for note", opts = { nowait = true } },
    ["<leader>oq"] = { "<cmd> ObsidianQuickSwitch <CR>", "Switch to different Note", opts = { nowait = true } },
    ["<leader>or"] = { "<cmd> ObsidianTemplate <CR>", "Open template note", opts = { nowait = true } },

    -- Enable git blame in line
    ["<leader>ge"] = { "<cmd> GitBlameToggle <CR>", "Toggle git blame", opts = { nowait = true } },
    -- Diff View Open
    ["<leader>dv"] = { "<cmd> DiffviewOpen <CR>", "Open DiffView", opts = { nowait = true } },
    -- LazyGit
    ["<leader>gl"] = { "<cmd> LazyGit <CR>", "Open LazyGit", opts = { nowait = true } },
    -- Workspace
    ["<leader>wl"] = { "<cmd> Telescope workspaces <CR>", "List workspaces", opts = { nowait = true } },
    ["<leader>ss"] = { "<cmd> SessionsSave <CR>", "Save current Session", opts = { nowait = true } },
    ["<leader>jj"] = { "<cmd> Noice dismiss <CR>", "Dismiss notification", opts = { nowait = true } },
    -- Database stuff
    ["<leader>dq"] = {
      function()
        require("dbee").toggle()
      end,
      "Open Database UI",
      opts = { nowait = true }
    },

    ["<leader>tn"] = { "<cmd> Neotest summary <CR>", "Dismiss notification", opts = { nowait = true } },
    -- Debugging
    ["<leader>db"] = {
      function()
        require("dapui").toggle()
      end,
      "Open debugger",
      opts = { nowait = true }
    },
    ["<leader>da"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Toggle breakpoint",
      opts = { nowait = true }
    },
    ["<leader>de"] = {
      function()
        require("dapui").eval()
      end,
      "Eval under cursor",
      opts = { nowait = true }
    },
    ["<leader>dc"] = {
      "<cmd> DapContinue <CR>",
      "Continue",
      opts = { nowait = true }
    },
    ["<leader>dr"] = {
      "<cmd> DapRestartFrame <CR>",
      "Restart",
      opts = { nowait = true }
    },
    ["<leader>dt"] = {
      "<cmd> DapTerminate <CR>",
      "Terminate Debugger",
      opts = { nowait = true }
    },
    ["<leader>do"] = {
      "<cmd> DapStepOver <CR>",
      "Dap Step Over",
      opts = { nowait = true }
    },
    ["<leader>dso"] = {
      "<cmd> DapStepOver <CR>",
      "Dap Step Out",
      opts = { nowait = true }
    },
    ["<leader>dsi"] = {
      "<cmd> DapStepInto <CR>",
      "Dap Step Into",
      opts = { nowait = true }
    },
  },

  t = {
    -- Term toggle
    ["<A-i>"] = { "<cmd> Lspsaga term_toggle <CR>", "Toggle floating terminal" }
  },
  v = {
    [">"] = { ">gv", "indent" },
    ["<leader>de"] = {
      function()
        require("dapui").eval()
      end,
      "Eval under cursor",
      opts = { nowait = true }
    },
  },
}

M.lspconfig = {
  n = {
    ["K"] = { "<cmd> Lspsaga hover_doc <CR>", "Hover doc", opts = { nowait = true } },
    ["<leader>pd"] = { "<cmd> Lspsaga peek_definition <CR>", "Peek definition", opts = { nowait = true } },
    ["gr"] = { "<cmd> Lspsaga finder <CR>", "Toggle Trouble for refs", opts = { nowait = true } },
    ["gd"] = { "<cmd> Lspsaga goto_definition <CR>", "Go to Def", opts = { nowait = true } },
    ["<leader>D"] = { "<cmd> Lspsaga goto_type_definition <CR>", "Type Defs", opts = { nowait = true } },
    ["<leader>tq"] = { "<cmd> TroubleToggle quickfix <CR>", "Toggle Trouble for fixes", opts = { nowait = true } },
    ["<leader>q"] = { "<cmd> TroubleToggle document_diagnostics <CR>", "Toggle Trouble for doc", opts = { nowait = true } },
    ["<leader>tw"] = { "<cmd> TroubleToggle workspace_diagnostics <CR>", "Toggle Trouble for wrkspc", opts = { nowait = true } }
  }
}

return M
