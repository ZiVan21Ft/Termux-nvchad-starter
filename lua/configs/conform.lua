local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- css = { "prettier" },
    -- html = { "prettier" },
    --javascript = { "prettier" },
    python = { "isort", "black" },
  },

  -- -- below code block is when you saved file ctrl+s then file save as formatted file && above block was its only normal format file was not saved just make format
  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
