# How I setup this system

```sh
sudo apt update
sudo apt-get update

sudo snap set system experimental.hidden-snap-folder=true
sudo snap install nvim
```

## install rust
# add that here


## for astronvim
* install astronvim
```sh
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
```

* install nerdfonts - jetbrainsmono
https://www.nerdfonts.com/font-downloads
* install it to windows, set it in the settings for the distro in the windows terminal settings

* install tree-sitter
```sh
cargo install tree-sitter-cli
```

* skipping clipboard, should probably do something about it

* ripgrep
```sh
sudo apt-get install ripgrep
```

* lazygit
```sh
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
```

* go DiskUsage()
```sh
add-apt-repository ppa:daniel-milde/gdu
apt-get update
apt-get install gdu
```

* bottom
```sh
rustup update stable
cargo install bottom --locked
```

* install node
```sh
sudo apt install nodejs
```

* clone the dotfiles..  need the nvim dot files

## Install python3.11
idk

## Setup tmux
```sh
echo "set -g default-terminal \"screen-256color\"" > ~/.tmux.conf
```


