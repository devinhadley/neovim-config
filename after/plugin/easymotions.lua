-- EasyMotion configuration
vim.api.nvim_set_keymap('n', 'f', '<Plug>(easymotion-overwin-f)', {})

-- Optional: Customize EasyMotion settings
vim.g.EasyMotion_do_mapping = 0  -- Disable default mappings
vim.g.EasyMotion_smartcase = 1   -- Enable smart case matching
