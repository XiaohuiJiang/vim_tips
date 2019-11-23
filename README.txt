# vim_tips

# vimrc
http://www.cnblogs.com/ma6174/archive/2011/12/10/2283393.html
wget  http://files.cnblogs.com/ma6174/vimrc.zip
unzip vimrc.zip

From <http://www.cnblogs.com/ma6174/archive/2011/12/10/2283393.html>


" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

From <https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim>


## 让vim显示行尾的空格
fedora 9系统下 
在/etc/vimrc文件添加如下两行 
highlight WhitespaceEOL ctermbg=red guibg=red 
match WhitespaceEOL /\s\+$/

From <http://www.cnblogs.com/likeatree/p/3933890.html>

## cscope+ ctags+ taglist
vim+ctags+cscope安装与使用总结（不断补充中）
http://blog.csdn.net/luckywang1103/article/details/44181557
http://easwy.com/blog/archives/advanced-vim-skills-cscope/
https://vim.sourceforge.io/scripts/script.php?script_id=273 (taglist)
http://www.vim.org/scripts/script.php?script_id=1658  (Nerdtree, optional)
http://ctags.sourceforge.net/
http://vim-taglist.sourceforge.net/index.html

### fine all files
find . –type f > cscope.files
### find according to subfix
find . -name "*.h" -o -name "*.c" -o -name "*.cpp" -o -name "*.cc"  -o -name "*.hh" > cscope.files
### create index file
cscope -bkq -i cscope.files
### for C++ tags
ctags -R --c++-kinds=+px --fields=+iaS --extra=+q
### for C tags
ctags -R


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cscopequickfix=s-,c-,d-,i-,t-,e-
if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  endif
  set csverb
endif

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

