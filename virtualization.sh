sudo dnf install @virtualisation

# sudo micro /etc/libvirt/libvirtd.conf
# uncomment #unix_sock_group = "libvirt", #unix_sock_rw_perms = "0770"

# sudo systemctl start libvirtd
# sudo systemctl enable libvirtd
# sudo usermod -a -G libvirt $(whoami)
