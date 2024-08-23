# Setup and Configuration
### Clone repository to homefolder
```git
git clone https://github.com/psi-mon/dotfiles.git

```
### Install Brewfile

```bash
ln -s ~/dotfiles/Brewfiles/work/Brewfile ~/Brewfile
```

install Brewfile

```bash
brew bundle
```
#### Setup brew aliases

```bash
ln -s ~/dotfiles/.brew-aliases ~/.brew-aliases
```


### iTerm2

#### iTerm2 profile

```bash
# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/dotfiles/iterm2"
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
```

Reference `dotfiles/iTerm2/com.googlecode.iterm2.plist` as described in [here](http://stratus3d.com/blog/2015/02/28/sync-iterm2-profile-with-dotfiles-repository/)

#### Install Nerdfont
Install Nerdfont as described [here](https://webinstall.dev/nerdfont/)

### oh-my-zsh
[Install](https://ohmyz.sh/#install)

#### Symlink .zshrc and plugins

```bash
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/Dropbox/appdata/Mackup/.oh-my-zsh/custom ~/.oh-my-zsh/custom
```

### tmux

```bash
ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
```

install [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

### nvim
Further setup instructions [here](https://github.com/LunarVim/Neovim-from-scratch)

```bash
ln -s ~/dotfiles/nvim ~/.config/nvim
```
Run Packer sync
```bash
:PackerSync
```
Update treesitter
```bash
:TSUpdate
```
### pgcli

```bash
ln -s ~/dotfiles/pgcli/config ~/.config/pgcli/config
```

create a `.pgpass` file in the home directory with the needed passw as described here:
https://postgresql.org/docs/9.3/libpq-pgpass.html

```bash

### Ranger

```bash
ln -s ~/dotfiles/ranger ~/.config
```

### Git 

#### Work gitconfig
```bash
ln -s ~/dotfiles/gitConfig/work/.gitconfig ~/.gitconfig
```

### Alfred

Point preference file sync to `~/Dropbox/appdata/Alfred/`
and make sure that the dropbox files are offline available!

### Rectangle Pro 
Import setting from `~/dotfiles/rectanglePro/RectangleProConfig.json`

### Webstorm

For some reasons, the sync settings feature of Webstorm does not work for me so the settings have to be manually 
exported and imported.

The following plugins need to be installed:

- IdeaVim 
- AceJump
- Ideavim-Easymotions

```bash
ln -s ~/dotfiles/.ideavimrc ~/.ideavimrc
```
