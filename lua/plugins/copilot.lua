return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = "InsertEnter",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = false,
        hide_during_completion = true,
        debounce = 0,
        keymap = {
          accept = "<M-o>",
          accept_word = false,
          accept_line = false,
          next = "<M-e>",
          prev = "<M-i>",
          dismiss = "<M-n>",
        },
      },
    },
  },
}
