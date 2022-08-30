# import key
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

# import repository
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

# update repositories
dnf check-update

# vscode install
sudo dnf install code
