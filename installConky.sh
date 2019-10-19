#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y conky-all
sudo wget -O /home/pi/.conkyrc https://raw.githubusercontent.com/msanaullahsahar/rpi-conky/master/.conkyrc
sudo chmod a+x /home/pi/.conkyrc
sudo wget https://raw.githubusercontent.com/msanaullahsahar/rpi-conky/master/conky.sh
sudo mv conky.sh /usr/bin/
sudo wget https://raw.githubusercontent.com/msanaullahsahar/rpi-conky/master/conky.desktop
sudo mv conky.desktop /etc/xdg/autostart/
sudo reboot

