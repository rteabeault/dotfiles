return {
  {
    --- "catppuccin/nvim",
    --- "marko-cerovac/material.nvim",
    "rebelot/kanagawa.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      --- colorscheme = "material-darker",
      colorscheme = "kanagawa-dragon",
    },
  },
}
