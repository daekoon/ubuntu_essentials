# Update 
sudo apt update && sudo apt upgrade

# Move the dock to bottom of the screen
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM

# Move the windows button to the left side of the screen
gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true

# Install Telegram
wget -O- https://telegram.org/dl/desktop/linux | sudo tar xJ -C /opt/
sudo ln -s /opt/Telegram/Telegram /usr/local/bin/telegram-desktop

# Install important stuff not installed with minimal installation
sudo apt-get install vim
sudo apt-get install curl
sudo apt-get install git

# Install vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
