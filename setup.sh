# dnf boost
echo -e "[main]\ngpgcheck=1\ninstallonly_limit=3\nclean_requirements_on_remove=True\nbest=False\nskip_if_unavailable=True\nfastestmirror=1\nmax_parallel_downloads=10\ndeltarpm=true" | sudo tee /etc/dnf/dnf.conf

# check for all updates
sudo dnf autoremove
sudo dnf clean all
sudo dnf update
sudo dnf upgrade --refresh
sudo dnf makecache --refresh

# add flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak update

# add rpmfusion
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

# install media codecs
sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf install lame\* --exclude=lame-devel
sudo dnf group upgrade --with-optional Multimedia

# change hostname
sudo hostnamectl set-hostname "fading"

# install my most pkgs
sudo dnf -y install dnf-plugins-core \
                    gcc \
                    clang \
                    cmake \
                    python3 \
                    python3-pip \
                    python3-devel \
                    python3-distutils-extra \
                    git \
                    curl \
                    wget \
                    neofetch \
                    ffmpeg \
                    micro \
                    htop \
                    transmission \
                    stacer \
                    cozy \
                    gnome-tweaks \
                    chromium

neofetch
