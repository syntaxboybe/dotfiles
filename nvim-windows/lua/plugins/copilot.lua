return {
  "github/copilot.vim",
  config = function()
    -- Optional: Add custom Copilot settings here
    vim.g.copilot_no_tab_map = true -- Disable default <Tab> mapping
    vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
  end,
}
