local status, nvterm = pcall(require, "nvterm")
if (not status) then return end

nvterm.setup {
  terminals = {
    list = {},
    type_opts = {
      float = {
        relative = "editor",
        row = 0.3,
        col = 0.25,
        width = 0.5,
        height = 0.4,
        border = "single",
      },
      horizontal = { location = "rightbelow", split_ratio = 0.3 },
      vertical = { location = "rightbelow", split_ratio = 0.5 },
    },
  },
  behavior = {
    close_on_exit = true,
    auto_insert = true,
  },
  enable_new_mappings = true,
}

local toggle_modes = {'n', 't'}
local mappings = {
  { 'n', '<C-l>', function () require("nvterm.terminal").send(ft_cmds[vim.bo.filetype]) end },
  { toggle_modes, '<leader>h', function () require("nvterm.terminal").toggle('horizontal') end },
  { toggle_modes, '<leader>v', function () require("nvterm.terminal").toggle('vertical') end },
  { toggle_modes, '<leader>i', function () require("nvterm.terminal").toggle('float') end },
}
local opts = { noremap = true, silent = true }
for _, mapping in ipairs(mappings) do
  vim.keymap.set(mapping[1], mapping[2], mapping[3], opts)
end
