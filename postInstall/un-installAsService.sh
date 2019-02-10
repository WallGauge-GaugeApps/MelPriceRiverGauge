#!/bin/bash
# To make this file executable follow these steps https://stackoverflow.com/questions/21691202/how-to-create-file-execute-mode-permissions-in-git-on-windows
# From DOS prompt type (git update-index --chmod=+x un-installAsService.sh) to make this file executable.
# set -e  <-This will cause script to end on first error with error code
echo "un-install service will stop and remove this app as a service starts now..."
#echo "Stop service -> systemctl stop MelPriceRiverGauge.service"
#sudo systemctl stop MelPriceRiverGauge.service
echo "Disable servers so it will not start on reboot ->systemctl disable MelPriceRiverGauge.service"
sudo systemctl disable MelPriceRiverGauge.service
echo "Remove the systemd service file -> rm /etc/systemd/system/MelPriceRiverGauge.service"
sudo rm /etc/systemd/system/MelPriceRiverGauge.service
echo "Remove D-Bus config file sudo rm /etc/dbus-1/system.d/MelPriceRiverGauge.conf"
sudo rm /etc/dbus-1/system.d/MelPriceRiverGauge.conf
echo "un-instal shell is complete. Reboot server to stop service."