sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

# install docker
sudo dnf install -y docker-ce \
                    docker-ce-cli \
                    containerd.io \
                    docker-compose-plugin

# enable docker
sudo systemctl start docker
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

# docker without sudo
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
