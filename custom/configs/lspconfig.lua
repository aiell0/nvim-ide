local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local configs = require "lspconfig.configs"

-- if you just want default config for the servers then put them in a table
local servers = {"html", "tsserver", "dockerls", "jsonls", "terraformls", "tflint", "eslint", "pylsp", "pyre", "pylyzer", "pyright", "golangci_lint_ls", "gopls", "grammarly", "bashls", "angularls", "eslint", "gopls", "helm_ls", "java_language_server", "jsonls", "yamlls", "snyk"}

for _, lsp in ipairs(servers) do

  if lsp == "snyk" then
    if not configs.snyk then
      configs.snyk = {
          default_config = {
              cmd = {'/usr/local/bin/snyk-ls'},
              root_dir = function(name)
                  return lspconfig.util.find_git_ancestor(name) or vim.loop.os_homedir()
              end,
              init_options = {
                  activateSnykCode = "true",
                  enableTelemetry = "false",
                  organization = "redesignhealth",
                  cliPath = "/opt/homebrew/bin/snyk",
                  token = "1b415555-99ba-440f-8eda-843dcdb5314e",
                  integrationName = "NEOVIM",
                  scanningMode = "manual"
              }
          };
      }
    end
  end

  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- 
-- lspconfig.pyright.setup { blabla}
