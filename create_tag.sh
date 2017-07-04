#########################################################################
# File Name: create_tag.sh
# Author: Xiaohui Jiang
# mail: Xiaohui.Jiang@emc.com
# Created Time: Wed 21 Jun 2017 04:35:11 AM EDT
#########################################################################
#!/bin/bash


find $(pwd) -name "*.cpp" -o -name "*.hpp" -o -name "*.c" -o -name "*.h" -o -name "*.cxx" -o -name "*.hxx" > cscope.files
#create index file
cscope -bkq -i cscope.files
#cscope -Rbkq
ctags -R --c++-kinds=+px --fields=+iaS --extra=+q -L cscope.files
