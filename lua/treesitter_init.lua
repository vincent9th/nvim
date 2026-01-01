require'nvim-treesitter'.install { 'c', 'cpp', 'python', 'javascript', 'lua', 'rust', 'zig' }

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'c', 'cpp', 'python', 'javascript', 'lua', 'rust', 'zig' },
  callback = function() vim.treesitter.start() end,
})

-- vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
-- vim.wo[0][0].foldmethod = 'expr'

vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
