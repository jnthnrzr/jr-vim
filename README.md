# jr-vim

$ cd
$ mv .vimrc .vim/
#=> Move your .vimrc file into the .vim/ directory

$ cd .vim/
$ git init
$ git add .
$ git commit -m "First Commit"
#=> Get your .vim/ directory under version control

$ cd
$ ln -s ~/.vim/.vimrc .vimrc
#=> Go to your home directory and symlink the version controlled .vimrc
