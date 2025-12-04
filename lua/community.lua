-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.nvchad-ui" },
  { import = "astrocommunity.icon.mini-icons" },
  -- Configure NvChad UI
  {
    "NvChad/ui",
    opts = {
      base46 = {
        theme = "everblush",
      },
      ui = {
        statusline = { enabled = false }, -- Using lualine instead
        tabufline = {
          lazyload = false,
          enabled = true,
        },
      },
    },
  },
  -- Disable heirline statusline but keep statuscolumn for folding
  {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      opts.statusline = nil -- Disable heirline statusline, using lualine
      return opts
    end,
  },
}
