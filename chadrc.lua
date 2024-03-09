local M = {}

local highlights = require "custom.highlights"

M.ui = {
  theme = "doomchad",
  theme_toggle = { "doomchad", "doomchad" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  lsp_semantic_tokens = false,

  statusline = {
    theme = "default",
    separator_style = "arrow",
  },
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M
