-- diffview.nvim - Git差分比較プラグイン
-- 現在のファイルと特定のブランチを比較したり、コミット履歴を表示したりできます

return {
  {
    'sindrets/diffview.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = { 'DiffviewOpen', 'DiffviewClose', 'DiffviewFileHistory', 'DiffviewToggleFiles' },
    keys = {
      -- ブランチ比較
      { '<leader>gd', '<cmd>DiffviewOpen<CR>', desc = '[G]it [D]iffview open (vs index)' },
      { '<leader>gD', ':DiffviewOpen ', desc = '[G]it [D]iffview open (specify branch)' },
      { '<leader>gm', '<cmd>DiffviewOpen main<CR>', desc = '[G]it diff vs [m]ain' },
      { '<leader>gM', '<cmd>DiffviewOpen master<CR>', desc = '[G]it diff vs [M]aster' },

      -- ファイル履歴
      { '<leader>gh', '<cmd>DiffviewFileHistory %<CR>', desc = '[G]it file [h]istory (current file)' },
      { '<leader>gH', '<cmd>DiffviewFileHistory<CR>', desc = '[G]it file [H]istory (all files)' },

      -- 閉じる
      { '<leader>gc', '<cmd>DiffviewClose<CR>', desc = '[G]it diffview [c]lose' },
    },
    opts = {
      enhanced_diff_hl = true,
      view = {
        default = {
          layout = 'diff2_horizontal',
        },
        merge_tool = {
          layout = 'diff3_horizontal',
        },
        file_history = {
          layout = 'diff2_horizontal',
        },
      },
      file_panel = {
        win_config = {
          position = 'left',
          width = 35,
        },
      },
      keymaps = {
        view = {
          { 'n', 'q', '<cmd>DiffviewClose<CR>', { desc = 'Close Diffview' } },
        },
        file_panel = {
          { 'n', 'q', '<cmd>DiffviewClose<CR>', { desc = 'Close Diffview' } },
        },
        file_history_panel = {
          { 'n', 'q', '<cmd>DiffviewClose<CR>', { desc = 'Close Diffview' } },
        },
      },
    },
  },
}
