local formatters = require"lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "clang-format",
    filetypes = { "java" },
   extra_args = { "--style", "Google" },
  }
}

lvim.plugins = {
  'mfussenegger/nvim-jdtls',
}

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })
