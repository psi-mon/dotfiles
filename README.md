# Setup and Configuration
### Clone repository to homefolder
```git
git clone https://github.com/psi-mon/dotfiles.git

```
### Install Brewfile
todo

### iTerm2

#### iTerm2 profile
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

### nvim
Further setup instructions [here](https://github.com/LunarVim/Neovim-from-scratch)

```bash
ln -s ~/dotfiles/nvim ~/.config/nvim
```

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
