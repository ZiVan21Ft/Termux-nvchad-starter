return {
  {
    "stevearc/conform.nvim",
    --event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- {
  --    "nvim-treesitter/nvim-treesitter",
  --    opts = {
  --            ensure_installed = {
  --                    "vim", "lua", "vimdoc",
  --      "html", "css"
  --            },
  --    },
  -- },
  --cmp remapping keybind
  {
    "hrsh7th/nvim-cmp",
    config = function(_, opts)
      local cmp = require("cmp")
      local mymappings = {
        ["<Up>"] = cmp.mapping.select_prev_item(),
        ["<Down>"] = cmp.mapping.select_next_item(),
                                --     ["<Tab>"] = cmp.mapping.confirm({behavior = cmp.ConfirmBehavior.Replace,
                                -- select = true,
                                --     }),
        -- ["<End>"] = cmp.mapping.abort(),
        ["<End>"] = cmp.mapping.close()
      }
      opts.mapping = vim.tbl_deep_extend("force", opts.mapping, mymappings)
      cmp.setup(opts)
    end,
  },
  -- {
  --    "nvimdev/guard.nvim",
  --   event = "BufReadPre",
  --   config = function()
  --     local ft = require("guard.filetype")
  --     ft("c,cpp,json"):fmt("clang-format")
  --     require("guard").setup({
  --       fmt_on_save = true,
  --       lsp_as_default_formatter = false,
  --     })
  --   end,
  -- }
}
