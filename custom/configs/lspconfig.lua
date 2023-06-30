local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = {"html", "tsserver", "dockerls", "jsonls", "terraformls", "tflint", "eslint", "pylsp", "pyre", "pylyzer", "pyright", "golangci_lint_ls", "gopls", "grammarly", "bashls", "angularls", "eslint", "gopls", "helm_ls", "java_language_server", "jsonls", "yamlls"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- 
-- lspconfig.pyright.setup { blabla}
