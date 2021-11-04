NC="\\033[0m"

throw()
{
  COLOR="\\033[0;31m"
  >&2 echo -e ${COLOR}$1${NC}
}

print()
{
  COLOR="\\033[0;32m"
  echo -e ${COLOR}$1${NC}
}

warn()
{
  COLOR="\\033[0;33m"
  echo -e ${COLOR}$1${NC}
}

confirm_ssh()
{
  read -p "Have you added the SSH Key? [y/N] " CONFIRM_SSH
  if [[ $CONFIRM_SSH -ne "y" || $CONFIRM_SSH -ne "Y" ]]
  then
    warn "Please add it to continue."
    confirm_ssh
  fi
}

install()
{
  # Instalamos git 
  sudo apt install git -y
  print "Git installed"

  # Configuramos SSH y la agregamos a nuestra cuenta de Github
  warn "Please, enter your GitHub email address and name"
  read -p "Email address: " EMAIL
  read -p "Name: " NAME
  git config --global user.name "$NAME"
  git config --global user.email "$EMAIL"
  echo "Generating SSH Key"
  ssh-keygen -t rsa -b 4096 -C "$EMAIL"
  eval "$(ssh-agent -s)"
  ssh-add -K ~/.ssh/id_rsa
  pbcopy < ~/.ssh/id_rsa.pub
  warn "We have copied your new SSH Key to your clipboard, please add it to your GitHub account going to https://github.com/settings/keys"
  sleep 2.5
  open "https://github.com/settings/keys"
  confirm_ssh
  print "Git & GitHub configured"

  # Instalamos Node en la versión 16 && npm
  sudo apt install curl -y
	curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh
	sudo bash nodesource_setup.sh
	sudo apt install nodejs -y
  print "Node.js installed"

  # Chequeamos la versión de Python instalamos pip, herramientas adicionales y entornos virtuales
  python3 -V
  sleep 2.5
  sudo apt install -y python3-pip
  sudo apt install build-essential libssl-dev libffi-dev python3-dev -y
  sudo apt install -y python3-venv
  print "Python3 && dependencies installed"

  # Instalamos ZSH && OMYZSH
  sudo apt install zsh -y
  zsh --version
  sleep 2.5
  chsh -s $(which zsh) -y
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y
  print "ZSH Shell Installed"

  # Clonamos e instalamos plugins de ZSH SHELL
  # Syntax-highlighting
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
  echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
  # zsh-autosuggestions 
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  # K
  git clone https://github.com/supercrabtree/k $ZSH_CUSTOM/plugins/k
  print "Plugins ZSH installed"

  # Instalamos gestor de dependencias de vim, vim y neovim
  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  sudo apt install vim -y
  sudo apt-get install -y neovim
  print "Vim, vim-plugged && neovim installed"

  sudo apt install fzf -y
  print "fzf installed"
}

if [ "$1" = "install" ]
then
  install
else
  throw "Invalid command, available values are 'install'"
fi
