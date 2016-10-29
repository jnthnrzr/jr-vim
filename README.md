# jr-vim

## Move your .vimrc file into the .vim/ directory
cd
mv .vimrc .vim/

## Get your .vim/ directory under version control
* cd .vim/
* git init
* git add .
* git commit -m "First Commit"

## Go to your home directory and symlink the version controlled .vimrc
* cd
* ln -s ~/.vim/.vimrc .vimrc
