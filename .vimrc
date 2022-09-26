call pathogen#infect()
set background=dark
color mango_pudding
set re=1
syntax on
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
autocmd BufNewFile,BufRead Gemfile set filetype=ruby
au BufNewFile,BufRead *.json.jbuilder set ft=ruby
set number
set hlsearch
set nofoldenable
set lazyredraw
set ttyfast
set synmaxcol=1000
"autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
"autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

let g:syntastic_mode_map = { 'mode': 'passive'}
let g:ycm_seed_identifiers_with_syntax = 1

:map <leader>s :if exists("g:syntax_on") <Bar>
      \   syntax off <Bar>
      \ else <Bar>
      \   syntax enable <Bar>
      \ endif <CR>

map <leader>n :NERDTreeToggle<CR>
"Show hidden files in NerdTree
let NERDTreeShowHidden=1
"autopen NERDTree and focus cursor in new document
"autocmd VimEnter * NERDTree
"ctrlP setup
let g:ctrlp_show_hidden = 1
let g:NERDTreeChDirMode       = 2
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_dont_split = 'NERD'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|swo|DS_Store|ico|git|svn))$'

"strip spaces
let g:strip_whitespace_on_save=1

"custom commands
command Rresize execute "vertical resize 31"
"jsx inclusion
let g:jsx_ext_required = 0
"mapping blackhole register to delete
map <leader>d "_d

"mapping line swap
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
"inoremap <S-j> <Esc>:m .+1<CR>==gi
"inoremap <S-k> <Esc>:m .-2<CR>==gi
vnoremap <C-k> :m '<-2<CR>gv=gv
vnoremap <C-j> :m '>+1<CR>gv=gv

"mapping split resize
"nnoremap <S-Up> <c-w>+
"nnoremap <S-Down> <c-w>-
nnoremap <S-Left> <c-w><
nnoremap <S-Right> <c-w>>
nnoremap <leader>= <c-w>=

"reindent entire file
map <leader>I gg=G``<cr>"

"show and unshow tabs
:set listchars=tab:\|\
nnoremap <leader>wt :set list<CR>
nnoremap <leader>wn :set nolist<CR>

"show full path of current working file
command Cwf execute "echo expand('%:p') | pbcopy"
command Ywf execute "let @* = expand('%:p')"

"current path with line number
command Rwf execute "let @* = expand('%:p') . '" . ':' . line('.') . "'"

"yank to clipboard
map <leader>y "*y
"clipboard paste
map <leader>p "*p

nnoremap <leader>a @a
vnoremap <S-t> :Tab /:/l1c0

nnoremap <leader>/ :noh<CR>

"ruby-vim
imap <S-CR> <CR><CR>end<Esc>-cc

"open ctag in new tab
:nnoremap <silent><Leader><C-]> <C-w><C-V><C-]>

"whitespace strip
vnoremap <C-s> :s# \+# #g<CR>:noh<CR>

"search escaped selected
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
