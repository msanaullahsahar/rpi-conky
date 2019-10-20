#!/bin/bash
echo "Installing Conky"
sudo apt-get install -y conky-all
echo "Downloading conky configuration file"
sudo wget -O /home/pi/.conkyrc https://raw.githubusercontent.com/msanaullahsahar/rpi-conky/master/.conkyrc
sudo chmod a+x /home/pi/.conkyrc
echo "Downloading conky autostart file"
sudo wget https://raw.githubusercontent.com/msanaullahsahar/rpi-conky/master/conky.sh
sudo mv conky.sh /usr/bin/
echo "Downloading desktop startup entry for conky"
sudo wget https://raw.githubusercontent.com/msanaullahsahar/rpi-conky/master/conky.desktop
sudo mv conky.desktop /etc/xdg/autostart/
echo "Rebooting RaspberryPi"
sudo reboot

