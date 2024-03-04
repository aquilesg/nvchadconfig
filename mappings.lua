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

    ["<C-c>"] = nil,
  },
  t = {
    -- Term toggle
    ["<A-i>"] = { "<cmd> Lspsaga term_toggle <CR>", "Toggle floating terminal" }
  },
  v = {
    [">"] = { ">gv", "indent" },
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
