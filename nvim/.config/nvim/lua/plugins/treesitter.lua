return {
  "nvim-treesitter/nvim-treesitter",
  branch = 'master',
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "graphql",
        "html",
        "css",
        "json",
        "markdown",
        "yaml"
      },
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true
      }
    })
  end
}
