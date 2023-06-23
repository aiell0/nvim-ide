local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "python",
    "gitcommit",
    "gitignore",
    "git_config",
    "git_rebase",
    "gitattributes",
    "go",
    "gomod",
    "gosum",
    "gowork",
    "bash",
    "comment",
    "dockerfile",
    "hcl",
    "java",
    "json",
    "regex",
    "terraform",
    "yaml"
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",
    "vale",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    "angular-language-server",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    "autopep8",
    "bash-debug-adapter",
    "bash-language-server",
    "beautysh",
    "black",
    "cfn-lint",
    "docformatter",
    "dockerfile-language-server",
    "eslint_d",
    "eslint-lsp",
    "flake8",
    "gh",
    "gitlint",
    "go-debug-adapter",
    "gofumpt",
    "goimports",
    "goimports-reviser",
    "golangci-lint",
    "golangci-lint-langserver",
    "golines",
    "gomodifytags",
    "gopls",
    "gospel",
    "gotests",
    "gotestsum",
    "helm-ls",
    "iferr",
    "impl",
    "java-language-server",
    "java-test",
    "jdtls",
    "jq",
    "jq-lsp",
    "js-debug-adapter",
    "json-lsp",
    "json-to-struct",
    "jsonlint",
    "markdownlint",
    "mypy",
    "nginx-language-server",
    "prettierd",
    "pydocstyle",
    "pyflakes",
    "pylama",
    "pylint",
    "pylyzer",
    "pyment",
    "pyre",
    "pyright",
    "python-lsp-server",
    "quick-lint-js",
    "reorder-python-imports",
    "shellcheck",
    "shellharden",
    "staticcheck",
    "terraform-ls",
    "textlint",
    "tflint",
    "tfsec",
    "ts-standard",
    "yaml-language-server",
    "yamlfix",
    "yamlfmt",
    "yamllint",
    "yq",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
