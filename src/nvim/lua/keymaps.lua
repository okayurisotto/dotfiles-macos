local set_keymap = function(modes, lhs, rhs)
  for _, mode in pairs(modes) do
    vim.api.nvim_set_keymap(mode, lhs, rhs, { noremap = true, silent = true })
  end
end

-- fold {{{

set_keymap({ 'n' }, '<Tab>', '<Cmd>foldopen<CR>')
set_keymap({ 'n' }, '<S-Tab>', '<Cmd>foldclose<CR>')

-- }}}

-- search {{{

set_keymap({ 'n' }, '<C-c><C-c>', '<Cmd>nohlsearch<CR>')

set_keymap({ 'n', 'v' }, 'n', 'nzz')
set_keymap({ 'n', 'v' }, 'N', 'Nzz')

-- }}}

-- cursor {{{

set_keymap({ 'n', 'v' }, 'gj',  'j')
set_keymap({ 'n', 'v' }, 'gk',  'k')
set_keymap({ 'n', 'v' },  'j', 'gj')
set_keymap({ 'n', 'v' },  'k', 'gk')

-- https://postd.cc/how-to-boost-your-vim-productivity/
set_keymap({ 'n', 'v' }, 'p', 'p`]')
set_keymap({      'v' }, 'y', 'y`]')

-- }}}

-- scroll {{{

set_keymap({ 'n', 'v' }, '<S-j>', '<C-e>')
set_keymap({ 'n', 'v' }, '<S-k>', '<C-y>')

set_keymap({ 'n' }, '<C-j>', '<S-j>')

-- }}}

-- <Leader> {{{

set_keymap({ 'n', 'v' }, '<Leader><CR>',     ':')
set_keymap({ 'n', 'v' }, '<Leader><Leader>', 'zz')
set_keymap({ 'n', 'v' }, '<Leader>h',        '0')
set_keymap({ 'n', 'v' }, '<Leader>j',        'G')
set_keymap({ 'n', 'v' }, '<Leader>k',        'gg')
set_keymap({ 'n', 'v' }, '<Leader>l',        '$')

set_keymap({ 'n' }, '<Leader>q', '<Cmd>q<CR>')
set_keymap({ 'n' }, '<Leader>w', '<Cmd>w<CR>')

-- }}}

-- <C-f> {{{

-- https://qiita.com/delphinus/items/aea16e82de2145d2a6b7
local prefixes = {
  ['n'] = '',
  ['i'] = '<Esc>',
  ['t'] = '<C-\\><C-N><Esc>',
}
local entries = {
  ['-'] =       '<Cmd>split<CR>',
  ['<CR>'] =    ':',
  ['<Esc>'] =   '',
  ['H'] =       '<C-w>H',
  ['J'] =       '<C-w>J',
  ['K'] =       '<C-w>K',
  ['L'] =       '<C-w>L',
  ['\\'] =      '<Cmd>vsplit<CR>',
  ['h'] =       '<C-w>h',
  ['j'] =       '<C-w>j',
  ['k'] =       '<C-w>k',
  ['l'] =       '<C-w>l',
}

for mode, prefix in pairs(prefixes) do
  for input, output in pairs(entries) do
    set_keymap({ mode }, '<C-f>' .. input, prefix .. output)
  end
end

-- }}}

-- o {{{

set_keymap({ 'o' }, "'", "i'")
set_keymap({ 'o' }, '"', 'i"')
set_keymap({ 'o' }, '(', 'i(')
set_keymap({ 'o' }, '<', 'i<')
set_keymap({ 'o' }, '[', 'i[')
set_keymap({ 'o' }, '{', 'i{')

-- }}}

-- indent {{{

set_keymap({ 'n' }, '<', '<<')
set_keymap({ 'n' }, '>', '>>')

-- }}}
