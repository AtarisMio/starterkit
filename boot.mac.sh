#! /bin/bash

# install HomeBrew
echo "installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "done;"

#region install oh-my-zsh
echo "installing zsh & oh-my-zsh & zsh-autosuggestions"
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "done;"
#endregion

#region install some cask app
echo "installing 1Password"
brew install --cask 1password
echo "done;"

echo "installing Chrome"
brew install --cask google-chrome
echo "done;"

echo "installing FiraCode"
brew tap homebrew/cask-fonts
brew install --cask font-fira-code
echo "done;"

echo "installing VSC"
brew install --cask visual-studio-code
echo "done;"

echo "installing Android Studio"
brew install --cask android-studio
echo "done;"

echo "installing Charles"
brew install --cask charles
echo "done;"

echo "installing iStat Menus"
brew install --cask istat-menus
echo "done;"
#endregion

#region install some app
echo "installing htop/tree/tmux/nvm/yarn"
brew install htop tree tmux nvm yarn
echo "done;"
#endregion
