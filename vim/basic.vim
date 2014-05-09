set nocp
set vb t_vb=
set ts=4 sw=4 sts=4
set et
set backspace=indent,eol,start
set autoindent
set showcmd showmode
set hidden
set laststatus=2
set pastetoggle=<F5>
set statusline=[%02n]\ %(%M%R%H%)\ %F\ %=<%l,%c%V>\ %P
set wildmenu
set is ic hls
set sm
set dir=$TMP//
set mps+=<:>
set bg=dark
set mouse=
set backupcopy=yes

set so=3
syntax on
filetype indent on
filetype plugin on
 
nmap Y y$

let g:xml_syntax_folding=1

autocmd BufEnter * lcd %:p:h 
autocmd FileType xml setlocal foldmethod=syntax

function HtmlEscape()
  silent s/&/\&amp;/eg
  silent s/</\&lt;/eg
  silent s/>/\&gt;/eg
endfunction

function HtmlUnEscape()
  silent s/&lt;/</eg
  silent s/&gt;/>/eg
  silent s/&amp;/\&/eg
endfunction

function! CSVH(x) 
    execute 'match Keyword /^\([^,]*,\)\{'.a:x.'}\zs[^,]*/' 
    execute 'normal ^'.a:x.'f,' 
endfunction 
command! -nargs=1 Csv :call CSVH(<args>)

vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
