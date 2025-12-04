-- You can also add or configure plugins by creating files in this `plugins/` folder

---@type LazySpec
return {
  {
    "pojokcodeid/auto-lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "nvim-lualine/lualine.nvim",
    },
    config = function()
      -- Let auto-lualine set up structure (sections, components)
      require("auto-lualine").setup {
        setOption = "triangle",
        setMode = 0,
      }

      -- Override with Everblush theme
      local colors = {
        black = "#141b1e",
        white = "#dadada",
        red = "#e57474",
        green = "#8ccf7e",
        blue = "#67b0e8",
        yellow = "#e5c76b",
        purple = "#c47fd5",
        cyan = "#6cbfbf",
        grey = "#232a2d",
        light_grey = "#2d3437",
        dark_grey = "#1e2528",
      }

      local everblush_theme = {
        normal = {
          a = { bg = colors.green, fg = colors.black, gui = "bold" },
          b = { bg = colors.grey, fg = colors.white },
          c = { bg = colors.black, fg = colors.white },
        },
        insert = {
          a = { bg = colors.blue, fg = colors.black, gui = "bold" },
          b = { bg = colors.grey, fg = colors.white },
          c = { bg = colors.black, fg = colors.white },
        },
        visual = {
          a = { bg = colors.purple, fg = colors.black, gui = "bold" },
          b = { bg = colors.grey, fg = colors.white },
          c = { bg = colors.black, fg = colors.white },
        },
        replace = {
          a = { bg = colors.red, fg = colors.black, gui = "bold" },
          b = { bg = colors.grey, fg = colors.white },
          c = { bg = colors.black, fg = colors.white },
        },
        command = {
          a = { bg = colors.yellow, fg = colors.black, gui = "bold" },
          b = { bg = colors.grey, fg = colors.white },
          c = { bg = colors.black, fg = colors.white },
        },
        inactive = {
          a = { bg = colors.black, fg = colors.white, gui = "bold" },
          b = { bg = colors.black, fg = colors.white },
          c = { bg = colors.black, fg = colors.white },
        },
      }

      require("lualine").setup {
        options = { theme = everblush_theme },
      }
    end,
  },
}
