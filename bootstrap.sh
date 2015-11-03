dir=~/dotfiles
olddir=~/dotfiles_old
files=".vimrc .vim .tmux.conf"

# create dotfiles_old in home directory
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "Done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "Done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory"
    ln -s $dir/$file ~/$file
done

# install the plugins listed in the .vimrc
vim +source ~/.vimrc +PluginInstall +qall
