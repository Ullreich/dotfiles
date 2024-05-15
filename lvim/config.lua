-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- plugins
lvim.plugins = {
  -- colorscheme
  { "rose-pine/neovim", name = "rose-pine" },
  { "sts10/vim-pink-moon", name = "pink-moon" }, -- fix: make treesittable
  { "rmehri01/onenord.nvim", name = "onenord" },
  { "matsuuu/pinkmare", name = "pinkmare"},
  -- plugins
  -- live markdown preview in browser

  -- test plugin
  {
    dir = "~/projects/wordcount.nvim/"
  },
  -- write own changes
  -- {
  --   "Ullreich/wordcount.nvim"
  -- },
  {
    "iamcco/markdown-preview.nvim",
    --dir = "~/projects/markdown-preview.nvim/",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
--    opts = {
--      mkdp_auto_close =deactivate 1,
--    },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  -- Markdown indentation
  -- for howto, see: http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
  {
    "godlygeek/tabular"
  },
  -- clipboard to image
  {
    "HakonHarnes/img-clip.nvim",
    event = "VeryLazy",
    opts = {
      default = {
        dir_path = "vimages", ---@type string
        use_absolute_path = true,
        drag_and_drop = {
          enable = true,
          insert_mode = true,
        },
        url_encode_path = true,
      }
    },
    keys = {
      -- suggested keymap
      { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
  },
  -- color highlighting
  {
    "brenoprata10/nvim-highlight-colors"
  },
}
}

lvim.colorscheme = "onenord"

-- configure core plugins
-- TODO: how the fuck get that to work

-- require "indentline-config"


--lvim.builtin.indentlines.options
-- require('indent_blankline').setup({
--     char = '@',
--     space_char_blankline = ' ',
--     show_current_context = true,
--     show_current_context_start = false,
--     use_treesitter = true,
--     context_patterns = { 'class', 'function', 'method' },
--     filetype_exclude = { 'help', 'packer', 'nvimtree', 'dashboard', 'neo-tree' },
--     buftype_exclude = { 'terminal', 'nofile', 'quickfix' },
-- })

-- set up color highlighting. see their github for commands
require('nvim-highlight-colors').setup({})

-- sensible settings
vim.opt.colorcolumn = "81,101"
vim.opt.clipboard ="unnamed,unnamedplus"


  --for now, set autowrapping on all files i guess
vim.opt.textwidth = 0
vim.opt.wrapmargin = 0
vim.opt.wrap = true
vim.opt.linebreak = true
  -- fucking vim defaults suck ass and you have to rebind them to work in visual line mode
lvim.keys.normal_mode["<Up>"] = "gk"
lvim.keys.visual_mode["<Up>"] = "gk"
lvim.keys.insert_mode["<Up>"] = "<C-O>gk"
lvim.keys.normal_mode["<Down>"] = "gj"
lvim.keys.visual_mode["<Down>"] = "gj"
lvim.keys.insert_mode["<Down>"] = "<C-O>gj"
