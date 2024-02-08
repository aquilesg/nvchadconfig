require("obsidian").setup({
  workspaces = {
    {
      name = "work",
      path = "/Users/aquiles.gomez/Documents/MyNotes",
      overrides = {
        daily_notes = {
          folder = "DailyNotes",
        },
        templates = {
          subdir = "Templates",
        },
      }
    }
  },
})
