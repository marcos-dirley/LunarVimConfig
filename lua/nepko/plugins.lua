-- Additional Plugins
lvim.plugins = {
    {
      "windwp/nvim-ts-autotag",
      config = function()
        require("nvim-ts-autotag").setup()
      end,
    },
    {
        "RRethy/vim-hexokinase",
        build = "make hexokinase"
    },
  "mrjones2014/nvim-ts-rainbow",
  "roobert/tailwindcss-colorizer-cmp.nvim",
  "nvim-treesitter/playground",
  "nvim-treesitter/nvim-treesitter-textobjects",
  "mfussenegger/nvim-jdtls",
  "NvChad/nvim-colorizer.lua",
  "folke/todo-comments.nvim",
  "f-person/git-blame.nvim",
  "ruifm/gitlinker.nvim",
  "is0n/jaq-nvim",
  "neogitorg/neogit",
  "simrat39/rust-tools.nvim",
  "jose-elias-alvarez/typescript.nvim",
  "mxsdev/nvim-dap-vscode-js",
  "petertriho/nvim-scrollbar",
  -- "renerocksai/calendar-vim",
  "MunifTanjim/nui.nvim",
  { "christianchiarulli/telescope-tabs", branch = "chris" },
  "monaqa/dial.nvim",
  {
    "0x100101/lab.nvim",
    build = "cd js && npm ci",
  },
  {
    "tzachar/cmp-tabnine",
    event = "BufRead",
    build = "./install.sh",
  },

  "mfussenegger/nvim-dap-python",
  "nvim-neotest/neotest",
  "nvim-neotest/neotest-python",
  {
    "hrsh7th/cmp-emoji",
    event = "BufRead",
  },
  -- "folke/noice.nvim",
  -- "rcarriga/nvim-notify",

  -- https://github.com/jose-elias-alvarez/typescript.nvim
  -- "rmagatti/auto-session",
  -- "rmagatti/session-lens"
  -- "christianchiarulli/nvim-ts-rainbow",
  -- "karb94/neoscroll.nvim",
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
        require("hop").setup()
        vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
        vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
    end,
    },

    {
      "ray-x/lsp_signature.nvim",
      event = "VeryLazy",
      opts = {},
      config = function(_, opts) require'lsp_signature'.setup(opts) end
    },

    {
        "simrat39/symbols-outline.nvim",
        config = function()
            require("symbols-outline").setup {
                opts = {
                    highlight_hovered_item = true,
                    show_guides = true,
                    auto_preview = false,
                    position = 'right',
                    relative_width = true,
                    width = 25,
                    auto_close = false,
                    show_numbers = false,
                    show_relative_numbers = false,
                    show_symbol_details = true,
                    preview_bg_highlight = 'Pmenu',
                    autofold_depth = nil,
                    auto_unfold_hover = true,
                    fold_markers = { '', '' },
                    wrap = false,
                    keymaps = { -- These keymaps can be a string or a table for multiple keys
                        close = {"<Esc>", "q"},
                        goto_location = "<Cr>",
                        focus_location = "o",
                        hover_symbol = "<C-space>",
                        toggle_preview = "K",
                        rename_symbol = "r",
                        code_actions = "a",
                        fold = "h",
                        unfold = "l",
                        fold_all = "W",
                        unfold_all = "E",
                        fold_reset = "R",
                    },
                    lsp_blacklist = {},
                    symbol_blacklist = {},
                    symbols = {
                        File = {icon = "", hl = "TSURI"},
                        Module = {icon = "", hl = "TSNamespace"},
                        Namespace = {icon = "", hl = "TSNamespace"},
                        Package = {icon = "", hl = "TSNamespace"},
                        Class = {icon = "𝓒", hl = "TSType"},
                        Method = {icon = "ƒ", hl = "TSMethod"},
                        Property = {icon = "", hl = "TSMethod"},
                        Field = {icon = "", hl = "TSField"},
                        Constructor = {icon = "", hl = "TSConstructor"},
                        Enum = {icon = "ℰ", hl = "TSType"},
                        Interface = {icon = "ﰮ", hl = "TSType"},
                        Function = {icon = "", hl = "TSFunction"},
                        Variable = {icon = "", hl = "TSConstant"},
                        Constant = {icon = "", hl = "TSConstant"},
                        String = {icon = "𝓐", hl = "TSString"},
                        Number = {icon = "#", hl = "TSNumber"},
                        Boolean = {icon = "⊨", hl = "TSBoolean"},
                        Array = {icon = "", hl = "TSConstant"},
                        Object = {icon = "⦿", hl = "TSType"},
                        Key = {icon = "🔐", hl = "TSType"},
                        Null = {icon = "NULL", hl = "TSType"},
                        EnumMember = {icon = "", hl = "TSField"},
                        Struct = {icon = "𝓢", hl = "TSType"},
                        Event = {icon = "🗲", hl = "TSType"},
                        Operator = {icon = "+", hl = "TSOperator"},
                        TypeParameter = {icon = "𝙏", hl = "TSParameter"}
                    }
                },
            }
        end,
    },
}
