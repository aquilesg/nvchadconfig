---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>v"] = { "<cmd> GpChatToggle vsplit <CR>", "Open chat vsplit", opts = { nowait = true } },
    ["<leader>h"] = { "<cmd> GpChatToggle split <CR>", "Open chat hsplit", opts = { nowait = true } },
    ["<leader>1"] = { "<cmd> GpChatRespond <CR>", "Respond to chat", opts = { nowait = true } },

    -- Allow Override the telescope to show hidden files
    ["<leader>ff"] = { "<cmd> Telescope find_files hidden=true <CR>", opts = { nowait = true } },

    -- Symbol outlines
    ["<leader>o"] = { "<cmd> Lspsaga outline <CR>", "Open Outline", opts = { nowait = true } },
    ["<leader>ca"] = { "<cmd> Lspsaga code_action <CR>", "Open Code Actions", opts = { nowait = true } },
    -- Term toggle
    ["<A-i>"] = { "<cmd> Lspsaga term_toggle <CR>", "Toggle floating terminal"}
  },
  t = {
    -- Term toggle
    ["<A-i>"] = { "<cmd> Lspsaga term_toggle <CR>", "Toggle floating terminal"}
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

-- more keybinds!

return M
