#! /bin/bash
echo "Welcome to sn0wmaker by Shravan Jambukesan. This script allows you to build winocm's opensn0w utility."
sleep 2
echo "sn0wmaker is now going to install some dependencies. Please wait."
sudo apt-get install build-essential automake autoconf git libusb-1.0-0-dev libcurl4-openssl-dev \
                       libreadline-dev

echo "sn0wmaker is building winocm's opensn0w"
git clone https://github.com/winocm/opensn0w.git
cd opensn0w
./autogen.sh
sudo make
sudo make install
echo "sn0wmaker has finished building winocm's opensn0w. This script was created by Shravan Jambukesan (@shrav_j)"
