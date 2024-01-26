require("lspsaga").setup({
  diagnostic = {}
    diagnostic_only_current = true,
  },

})

-- Disable vim diagnostic text
vim.diagnostic.config({
  virutal_text = false,
})
