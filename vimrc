" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.
"
" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim
"
" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim74/vimrc_example.vim or the vim manual
" and configure vim to your own liking!
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"                         For Debian Systems
"runtime! debian.vim
"
" Also Debian has a junk vim installed and all kinds of wacked out soft links.
" A work around is to run these commands.
"
" apt-get remove \
" vim vim-athena vim-common vim-dbg vim-doc vim-gnome vim-gtk \
" vim-gui-common vim-lesstif vim-nox vim-runtime vim-tiny vim-addon-manager \
" vim-latexsuite vim-rails vim-scripts vim-syntax-gtk vim-vimerl \
" vim-vimerl-syntax vimhelp-de vim-vimoutliner
"
" apt-get install mlocate
" sudo updatedb
" for junk in $(locate vim) ; do sudo rm -rf ${junk} ; done
"
" apt-get install vim-nox
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source /usr/src/vim/bundle/vim-pathogen/autoload/pathogen.vim 
"
execute pathogen#infect('bundle/{}', '/usr/src/vim/bundle/{}')
" This seems to be common problem caused by the '"system" vimrc in some
" distributions setting filetype on before you set up pathogen. So turning it
" off and back on again forces plugins to load correctly
"
" Make sure this is set before any options are set
" it is supose to effect what options do
" Sensable also sets it
set encoding=utf-8
"
"
syntax on
filetype plugin indent on
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"				Source the vimrc's for the loaded plugins
"
for rc in split(glob('/usr/src/vim/bundle/*/vimrc'), '\n')
    exe 'source' rc
endfor
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"				Now we source our system-wide zsh config
"
if filereadable("/etc/vim/vimrc.local")
	source /etc/vim/vimrc.local
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" index the help pages for the plugins, bad idea really
"autocmd VimEnter Helptags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

