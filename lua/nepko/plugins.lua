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
}
