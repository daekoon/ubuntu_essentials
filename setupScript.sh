# Manual stuff to do
# 1. Modify display settings to put secondary monitor as the primary monitor & to the right side
# 2. Change GRUB timeout to 30s and style to `menu`
# 3. Enable Korean language input


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
sudo apt-get install vim -y
sudo apt-get install curl -y
sudo apt-get install git -y

# Install vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Change default sudoedit editor to vim
sudo update-alternatives --config editor
