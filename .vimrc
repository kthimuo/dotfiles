syntax on
set nobackup
set noswapfile
set number
set cursorline
set nocp
set virtualedit=onemore
set filetype=python
nmap <Esc><Esc> :nohlsearch<CR><Esc>
"colorscheme molokai
"colorscheme garden
"colorscheme messy
"colorscheme darcula
inoremap { {}<LEFT>
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap ' ''<LEFT>

"インサートモードでも移動
inoremap <C-j>  <down>
inoremap <C-k>  <up>
inoremap <C-h>  <left>
inoremap <C-l>  <right>

if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
set runtimepath+=/root/.cache/dein/repos/github.com/Shougo/dein.vim



call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('scrooloose/nerdtree')

call dein#end()

"NerdTree設定
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <C-c> closetab
silent! map :NerdTreeFind <CR> 
let g:NERDTreeMapActivateNode="<C-a>"
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
filetype plugin indent on
syntax enable
