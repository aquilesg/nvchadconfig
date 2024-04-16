require("obsidian").setup({
  workspaces = {
    {
      name = "work",
      path = "~/Documents/Work",
      overrides = {
        daily_notes = {
          folder = "DailyNotes",
          template = "daily.md",
        },
        templates = {
          subdir = "Templates",
          substitutions = {
            pretty_date = function()
              return os.date("%B %d, %Y")
            end,
          }
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
    },
    {
      name = "robot",
      path = "~/Repos/robot/Docs",
    }
  },
  suppress_missing_scope = {
    projects_v2 = true,
  },
})
