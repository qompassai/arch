yay -S udev-steelseries-arctis

sudo udevadm control --reload-rules
sudo udevadm trigger

yay -S linux-arctis-manager

systemctl --user restart pipewire wireplumber
