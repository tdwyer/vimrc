" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
"runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim74/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

"source /etc/vim/vimrc

" Set 256color and color schema
set t_Co=256
colo jellybeans

" Make external commands work through a pipe instead of a pseudo-tty
set noguipty

" We always want mouse in GUI
set mouse=a

" This wacks out the CLI
set lines=44 columns=120

" They are all good looking
"set guifont=Courier\ Prime\ 10
"set guifont=Cousine.ttf\ 10
"
"But this is the best
"set guifont=PT\ Mono\ 9 
"Maybe this looks better...
set guifont=Monospace
