require("obsidian").setup({
  workspaces = {
    {
      name = "work",
      path = "~/Documents/Work",
      overrides = {
        daily_notes = {
          folder = "DailyNotes",
        },
        templates = {
          subdir = "Templates",
        },
      }
    },
    {
      name = "personal",
      path = "~/Documents/Personal",
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
