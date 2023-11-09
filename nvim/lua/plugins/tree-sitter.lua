return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  build = ":TSUpdate",
  event = "VeryLazy",
  main = "nvim-treesitter.configs",
  opts = {
    ensure_installed = {
      "lua",
      "luadoc",
      "astro",
      "svelte",
      "css",
      "scss",
      "html",
      "javascript",
      "json",
      "typescript",
      "tsx",
      "php",
      "phpdoc",
      "ruby",
      "python",
      "htmldjango",
      "sql",
      "dockerfile",
      "markdown",
      "yaml",
      "vimdoc",
      "vim",
      "elixir",
      "erlang",
      "haskell",
      "java",
    },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ac"] = "@conditional.outer",
          ["ic"] = "@conditional.inner",
          ["al"] = "@loop.outer",
          ["il"] = "@loop.inner",
        },
      },
    },
  },
}
