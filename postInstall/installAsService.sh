#!/bin/bash
# From DOS prompt type (git update-index --chmod=+x installAsService.sh) to make this file executable.
set -e
echo "NPM post install shell that installs this app as service starts now..."
echo "Set irdclient as defalut group for MelPriceRiverGauge -> sudo chown :irdclient ../MelPriceRiverGauge"
sudo chown :irdclient ../MelPriceRiverGauge
echo "Give default group write access to the MelPriceRiverGauge directory -> sudo chmod g+w ../MelPriceRiverGauge"
sudo chmod g+w ../MelPriceRiverGauge
echo "Install D-Bus config file for this service -> sudo cp ./postInstall/dbus.conf /etc/dbus-1/system.d/MelPriceRiverGauge.conf"
sudo cp ./postInstall/dbus.conf /etc/dbus-1/system.d/MelPriceRiverGauge.conf
echo "Install systemd service file -> sudo cp -n ./postInstall/server.service /etc/systemd/system/MelPriceRiverGauge.service"
sudo cp -n ./postInstall/server.service /etc/systemd/system/MelPriceRiverGauge.service
echo "Enable the servers to start on reboot -> systemctl enable MelPriceRiverGauge.service"
sudo systemctl enable MelPriceRiverGauge.service
#echo "Start the service now -> systemctl start MelPriceRiverGauge.service"
#sudo systemctl start MelPriceRiverGauge.service
echo "NPM Post install shell is complete."
echo "To start this servers please reboot the server. After reboot Type -> journalctl -u MelPriceRiverGauge -f <- to see status."