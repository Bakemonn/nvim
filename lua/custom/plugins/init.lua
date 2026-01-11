-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    ft = { 'markdown' },
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    },
    opts = {},
  },
  {
    'iamcco/markdown-preview.nvim',
    ft = { 'markdown' },
    build = 'cd app && npm install',
    init = function()
      vim.g.mkdp_auto_start = 0
      vim.g.mkdp_auto_close = 1
    end,
    keys = {
      { '<leader>mp', '<cmd>MarkdownPreviewToggle<CR>', desc = 'Toggle Markdown preview' },
    },
  },
  -- 修正版: 警告を消し、普通のフォルダも認識しやすくする設定
  {
    'ahmedkhalf/project.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    lazy = false,
    config = function()
      require('project_nvim').setup {
        -- 【重要】警告を消すために "lsp" を外して "pattern" だけにします
        detection_methods = { 'pattern' },
        show_hidden = true,
        -- 以下のファイル/フォルダがある場所を「プロジェクト」として記憶します
        patterns = { '.git', 'README.md', 'Makefile', 'package.json' },
      }
      require('telescope').load_extension 'projects'
    end,
    keys = {
      { '<leader>sp', '<cmd>Telescope projects<CR>', desc = '[S]earch [P]rojects' },
    },
  },
}
