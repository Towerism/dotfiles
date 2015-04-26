cd ~/dotfiles
git pull

# symlink our script
rm ~/symlink-dotfiles.sh
ln -sf ~/dotfiles/symlink-dotfiles.sh ~/symlink-dotfiles.sh

# add symlinks for all our dotfiles here
ln -sf ~/dotfiles/.spacemacs ~/.spacemacs
