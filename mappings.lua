---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    -- Octo Mappings
    ["<leader><leader>a"] = { "<cmd> Octo actions <CR>", "gh actions", opts = { nowait = true } },

    -- Advanced gitsearch
    ["<leader>a"] = { "<cmd> AdvancedGitSearch <CR>", "AdvancedGitSearch", opts = { nowait = true } },

    -- Allow Override the telescope to show hidden files
    ["<leader>ff"] = { "<cmd> Telescope find_files hidden=true <CR>", opts = { nowait = true } },

    -- Symbol outlines
    ["<leader>o"] = { "<cmd> Outline <CR>", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

M.lspconfig = {
  n = {
    -- Trouble mappings
    ["gr"] = { "<cmd> TroubleToggle lsp_references <CR>", "Toggle Trouble for refs", opts = { nowait = true } },
    ["gd"] = { "<cmd> TroubleToggle lsp_definitions <CR>", "Toggle Trouble for defs", opts = { nowait = true } },
    ["<leader>D"] = { "<cmd> TroubleToggle lsp_type_definitions <CR>", "Toggle Trouble for doc", opts = { nowait = true } },
    ["<leader>tq"] = { "<cmd> TroubleToggle quickfix <CR>", "Toggle Trouble for fixes", opts = { nowait = true } },
    ["<leader>q"] = { "<cmd> TroubleToggle document_diagnostics <CR>", "Toggle Trouble for doc", opts = { nowait = true } },
    ["<leader>tw"] = { "<cmd> TroubleToggle workspace_diagnostics <CR>", "Toggle Trouble for wrkspc", opts = { nowait = true } }
  }
}

-- more keybinds!

return M
