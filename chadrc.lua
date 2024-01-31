local M = {}

local highlights = require "custom.highlights"

M.ui = {
  theme = "ashes",
  theme_toggle = { "ashes", "ashes" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  lsp_semantic_tokens = false,

  statusline = {
    theme = "vscode_colored",
    separator_style = "default",
  },
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M
