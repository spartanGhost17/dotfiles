--language server protocols, useful for basically determing errors, etc
return {
  -- Mason for managing external tools (like LSPs)
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
 -- Mason-Lspconfig for managing LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "jdtls",        -- Java
          "tsserver",     -- TypeScript and JavaScript
          "angularls",    -- Angular
          "cssls",        -- CSS
          "html",         -- HTML
          "pyright",      -- Python
          "kotlin_language_server", -- Kotlin
          "gopls",        -- Go (requires golang-go to be installed)
          "graphql",      -- GraphQL
          --"omnisharp",    -- C#
          "clangd",       -- C and C++
          "jsonls",       -- JSON
          "yamlls",       -- YAML
          "dockerls",     -- Docker
          "bashls",       -- Bash/Shell
          "rust_analyzer",-- Rust
          --"terraformls",  -- Terraform
          "marksman",     -- Markdown
          --"sqlls",        -- SQL
          "volar",        -- Vue.js
          --"solargraph",   -- Ruby
          --"intelephense", -- PHP
          "eslint",       -- ESLint for JS/TS
          "lua_ls",       -- Lua (for Neovim configuration)
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      -- setup for specific language servers
      lspconfig.jdtls.setup {}            -- Java
      lspconfig.tsserver.setup {}         -- TypeScript and JavaScript
      lspconfig.angularls.setup {}        -- Angular
      lspconfig.cssls.setup {}            -- CSS
      lspconfig.html.setup {}             -- HTML
      lspconfig.pyright.setup {}          -- Python
      lspconfig.kotlin_language_server.setup {} -- Kotlin
      lspconfig.gopls.setup {}            -- Go
      lspconfig.graphql.setup {}          -- GraphQL
      --lspconfig.omnisharp.setup {}        -- C#
      lspconfig.clangd.setup {}           -- C and C++
      lspconfig.jsonls.setup {}           -- JSON
      lspconfig.yamlls.setup {}           -- YAML
      lspconfig.dockerls.setup {}         -- Docker
      lspconfig.bashls.setup {}           -- Bash/Shell
      lspconfig.rust_analyzer.setup {}    -- Rust
      --lspconfig.terraformls.setup {}      -- Terraform
      lspconfig.marksman.setup {}         -- Markdown
      --lspconfig.sqlls.setup {}            -- SQL
      lspconfig.volar.setup {}            -- Vue.js
      --lspconfig.solargraph.setup {}       -- Ruby
      --lspconfig.intelephense.setup {}     -- PHP
      lspconfig.eslint.setup {}           -- ESLint
      lspconfig.lua_ls.setup {}           -- Lua

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  }
}
