-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls" , "eslint", "ts_ls"}
local nvlsp = require "nvchad.configs.lspconfig"

nvlsp.defaults()
-- lsps with default config
-- neovim version v0.9
-- for _, lsp in ipairs(servers) do
  -- lspconfig[lsp].setup {
    -- on_attach = nvlsp.on_attach,
    -- on_init = nvlsp.on_init,
    -- capabilities = nvlsp.capabilities,
  -- }
-- end

-- neovim version v0.11.4
for _, lsp in ipairs(servers) do
  lspconfig(lsp, {
  -- lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  })
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
