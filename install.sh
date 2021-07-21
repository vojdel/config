#!/bin/bash
# autor: Jose Daniel
# version: 0.1.0

require_programs=(git wget zsh unzip)


# Check for required programs
for cmd in ${require_programs[@]};
do
  [!$(command -v $cmd)] && echo Command $cmd is required to run this
  script && exit 1
done

# OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# OhMyTmux
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

# Configure OhMyTmux
echo "
tmux_conf_theme_left_separator_main='\uE0C0'
tmux_conf_theme_left_separator_sub='\uE0C1'
tmux_conf_theme_right_separator_main='\uE0C2'
tmux_conf_theme_right_separator_sub='\uE0C3'

tmux_conf_copy_to_os_clipboard=true" >> ~/.tmux.conf.local

# Hack Nerd Font
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
unzip -d Hack Hack.zip
sudo mv Hack/ /usr/share/fonts/Hack/

# Gohg
bash -c  "$(wget -qO- https://git.io/vQgMr)" 
08 # Argonaut

# Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Vim-Plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# My Configs
ln -s nvim/ ~/.config/nvim/
ln -s .zshrc ~/.zshrc
source ~/.zshrc
