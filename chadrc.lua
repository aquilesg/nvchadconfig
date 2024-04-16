local M = {}

local highlights = require "custom.highlights"

M.ui = {
  theme = "doomchad",
  cmp = {
    style = "flat_dark",
  },
  theme = "everforest",
  theme_toggle = { "ayu_light", "everforest" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  nvdash = {
    load_on_startup = true,
  },
  lsp_semantic_tokens = false,

  statusline = {
    theme = "default",
    separator_style = "arrow",
  },
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M
