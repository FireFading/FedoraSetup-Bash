# import key
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

# import repository
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

# update repositories
dnf check-update

# vscode install
sudo dnf install -y code

# edit font display
echo -e "[Desktop Entry]
Name=Visual Studio Code
Comment=Code Editing. Redefined.
GenericName=Text Editor
Exec=/usr/share/code/code --ozone-platform-hint=auto --unity-launch %F
Icon=com.visualstudio.code
Type=Application
StartupNotify=false
StartupWMClass=Code
Categories=TextEditor;Development;IDE;
MimeType=text/plain;inode/directory;application/x-code-workspace;
Actions=new-empty-window;
Keywords=vscode;\n
[Desktop Action new-empty-window]
Name=New Empty Window
Exec=/usr/share/code/code --ozone-platform-hint=auto --new-window %F
Icon=com.visualstudio.code
" > /usr/share/applications/code.desktop
