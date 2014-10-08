"Initialize pathogen
call pathogen#infect()

if has("gui_running")
    "Enable solarized color scheme
    set background=dark
    colorscheme solarized
    call togglebg#map("<F5>")
endif

"Always display statusline
set laststatus=2
if has("unix")
    set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
    set guifont=Inconsolata\ 12
elseif has("win32")
    "make powerline display special characters correctly
    set encoding=utf-8
    source $VIM/_vimrc
    "Fix for fugitive Gdiff E302 error
    set directory+=,~/tmp,$TMP
    if has("gui_win32") || has("gui_win32s")
        "Load the powerline plugin
        set runtimepath+=~/vimfiles/bundle/powerline/powerline/bindings/vim
        set guifont=Inconsolata\ for\ Powerline:h12,Fixedsys:h12,Consolas:h12
    endif
endif

"Enable modeline
set modelines=1

"Enable filetype plugin
filetype plugin on
syntax on

"Auto clean fugitive buffers
if has("autocmd")
    autocmd BufReadPost fugitive://* set bufhidden=delete
endif

"Add command to get Quickfix file list
command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()
function! QuickfixFilenames()
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
endfunction

" dbext settings
let g:dbext_default_SQLITE_bin = 'sqlite3'
let g:dbext_default_profile_sqlite = 'type=SQLITE:dbname=/home/l9s/Files/db/00048184'
let g:dbext_default_MYSQL_bin = 'mysql'
let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:dbname=qadstore'
let g:dbext_default_profile_mysql_cvc = 'type=MYSQL:user=root:dbname=cvc'

"mappings
map ,pt  <Esc>:%! perltidy<CR>
map ,ptv <Esc>:'<,'>! perltidy<CR>
map ,t   <Esc>:!prove -v %<CR>
nmap ,n :bn<CR>
nmap ,d :bd<CR>
nmap ,w :w!<CR>
nmap ,v :tabedit $MYVIMRC<CR>
nmap ,q :w!<CR>:!perl %<CR>
nmap ,a :!python %<CR>

" mapping for tabularize
nmap ,a= :Tabularize /=<CR>
vmap ,a= :Tabularize /=<CR>
nmap ,a: :Tabularize /:\zs<CR>
vmap ,a: :Tabularize /:\zs<CR>

"" Pytest
nmap <silent>,f <Esc>:Pytest file<CR>
nmap <silent>,c <Esc>:Pytest class<CR>
nmap <silent>,m <Esc>:Pytest method<CR>

" Always show statusline
set laststatus=2
"
" " Use 256 colours (Use this setting only if your terminal supports 256
" colours)
set t_Co=256
