local wilder = require("wilder")
wilder.setup({
  modes = {
    "/",
    "?",
    ":",
  },
  next_key = "<C-n>",
  previous_key = "<C-p>",
})

local highlighters = {
  wilder.pcre2_highlighter(),
}

wilder.set_option("renderer",
  wilder.popupmenu_renderer(
    wilder.popupmenu_palette_theme(
      {
        border = 'rounded',
        max_height = '25%',
        min_height = 0,
        prompt_position = 'top',
        reverse = 0,
        empty_message = wilder.popupmenu_empty_message_with_spinner(),
        highlighter = highlighters,
        left = {
          ' ',
          wilder.popupmenu_devicons(),
          wilder.popupmenu_buffer_flags({
            flags = ' a + ',
            icons = { ['+'] = '', a = '', h = '' },
          }),
        },
        right = {
          ' ',
          wilder.popupmenu_scrollbar(),
        },

      }
    )
  )
)
