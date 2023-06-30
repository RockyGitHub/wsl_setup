RED='\033[0;31m'
ORANGE='\033[0;33m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "
${RED}@@@  @@@  @@@   @@@@@@   @@@           @@@@@@   @@@@@@@@  @@@@@@@  @@@  @@@  @@@@@@@   
@@@  @@@  @@@  @@@@@@@   @@@          @@@@@@@   @@@@@@@@  @@@@@@@  @@@  @@@  @@@@@@@@  
@@!  @@!  @@!  !@@       @@!          !@@       @@!         @@!    @@!  @@@  @@!  @@@  
!@!  !@!  !@!  !@!       !@!          !@!       !@!         !@!    !@!  @!@  !@!  @!@  
@!!  !!@  @!@  !!@@!!    @!!          !!@@!!    @!!!:!      @!!    @!@  !@!  @!@@!@!   
!@!  !!!  !@!   !!@!!!   !!!           !!@!!!   !!!!!:      !!!    !@!  !!!  !!@!!!    
${ORANGE}!!:  !!:  !!:       !:!  !!:               !:!  !!:         !!:    !!:  !!!  !!:       
:!:  :!:  :!:      !:!    :!:             !:!   :!:         :!:    :!:  !:!  :!:       
 :::: :: :::   :::: ::    :: ::::     :::: ::    :: ::::     ::    ::::: ::   ::       
  :: :  : :    :: : :    : :: : :     :: : :    : :: ::      :      : :  :    :
${NC}"

echo "test"

sleep 3
# Prepare system with dependencies
# User interaction based things first
echo "Installing rust"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sudo apt update
sudo apt-get update
echo "Configuring snap"
sudo snap set system experimental.hidden-snap-folder=true
echo "Installing neovim"
sudo snap install --yes nvim
echo "Installing tree-sitter-cli"
cargo install tree-sitter-cli
# install clipboard? idk what it does haven't looked into it
echo "Installing ripgrep"
sudo apt-get install ripgrep
# lazy-git
echo "Installing lazy-git"
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
# Install gdu
echo "Installing gdu"
sudo add-apt-repository ppa:daniel-milde/gdu
sudo apt-get update
sudo apt-get install gdu
# Install bottom
echo "Installing bottom"
rustup update stable
cargo install bottom --locked
# Install node
echo "Installing nodejs"
sudo apt install nodejs
# Install python3.11 ?
# Setup Tmux
echo "Creating tmux configuration"
echo "set -g default-terminal \"screen-256color\"" > ~/.tmux.conf




# Clone repositories to where they should go
# AstroNvim
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
# User config for AstroNvim
git clone git@github.com:RockyGitHub/astronvim_config.git ~/.config/nvim/lua/user/


# Install fonts
echo "Install fonts for Windows Terminal"
echo "Get font from: https://www.nerdfonts.com/font-downloads"
