local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {"html", "tsserver", "dockerls", "jsonls", "terraformls", "tflint", "terraform_lsp", "eslint", "pylsp", "pyre", "pylyzer", "pyright", "golangci_lint_ls", "gopls"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
