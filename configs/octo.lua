require("octo").setup({
  default_merge_method = "squash",
  review_diff = {
    toggle_viewed = { lhs = "<leader>tv", desc = "Toggle viewer viewed state" },
  }
})
