--setup language server options
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })

local pyright_opts = {

  single_file_support = true,
  settings = {
    pyright = {
        disableLanguageServices = false,
        disableOrganizeImports = false,
        disableTaggedHints = false
    },
    python = {
      analysis = {
        autoImportCompletions = true,
        autoSearchPaths = true,
        diagnosticMode = "workspace", -- openFilesOnly, workspace
        typeCheckingMode = "basic", -- off, basic, strict
        useLibraryCodeForTypes = true,
        --pythonPath = "/usr/bin/python"
      }
    }
  },
}

require("lvim.lsp.manager").setup("pyright", pyright_opts)

--setup treesitter
lvim.builtin.treesitter.ensure_installed = {
    "python",
}

--setup formatter
local formatters =require("lvim.lsp.null-ls.formatters")
formatters.setup({ {name="black"}, })

local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
    {
        command = "flake8",
        args = { "--ignore=E203"},
        filetypes = {"python"}
    },
})

--json support for pyright
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright", "jsonls" })

local json_opts = {
  settings = {
    json = {
      schemas = vim.list_extend(
        {
          {
            description = "pyright config",
            fileMatch = { "pyrightconfig.json" },
            name = "pyrightconfig.json",
            url =
            "https://raw.githubusercontent.com/microsoft/pyright/main/packages/vscode-pyright/schemas/pyrightconfig.schema.json",
          },
        },
        require('schemastore').json.schemas {
        }
      ),
    },
  },
}

require("lvim.lsp.manager").setup("jsonls", json_opts)
