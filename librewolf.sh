# add librewolf repository
sudo dnf config-manager --add-repo https://rpm.librewolf.net/librewolf-repo.repo

# install librewolf
sudo dnf install librewolf -y

# edit font display
echo -e "export MOZ_ENABLE_WAYLAND=1\nexport MOZ_USE_XINPUT2=1" >> ~/.bashrc
source .bashrc