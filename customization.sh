cd ~/Downloads/

# download theme
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme

# download system font
git clone https://github.com/supermarin/YosemiteSanFranciscoFont

# download code font
wget https://github.com/tonsky/FiraCode/releases/download/6.2/Fira_Code_v6.2.zip && unzip Fira_Code_v6.2.zip -d Fira_Code_v6.2 && rm Fira_Code_v6.2.zip

# install WhiteSur theme
cd WhiteSur-gtk-theme
sh install.sh -l -m --darker -c Dark -o normal -i void -N glassy
# sudo flatpak override --filesystem=xdg-config/gtk-4.0

