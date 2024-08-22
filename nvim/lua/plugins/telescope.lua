return {
    {

    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzy-native.nvim', build = 'make'
      }, -- Added fzy-native plugin
    },
    config = function()
      -- Update Telescope setup to use fzy-native sorter which is a faster sorting algorithm
      require('telescope').setup{
        defaults = {
          file_sorter = require('telescope.sorters').get_fzy_sorter,
          generic_sorter = require('telescope.sorters').get_fzy_sorter,
        },
        extensions = {
          fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
          }
        }
      }

      -- Load the fzy-native extension
      require('telescope').load_extension('fzy_native')

      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<C-p>', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      -- This is your opts table
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      }
      -- To get ui-select loaded and working with telescope, you need to call
      -- load_extension, somewhere after setup function:
      require("telescope").load_extension("ui-select")
    end
  }
}

