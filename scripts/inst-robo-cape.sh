#!/bin/bash -ev

cd /opt/source/BeagleBoard-DeviceTrees

make clean

make

sudo make install

sudo fdtoverlay -i /opt/source/BeagleBoard-DeviceTrees/src/arm64/k3-j721e-beagleboneai64.dtb -o /boot/k3-j721e-beagleboneai64.dtb /opt/source/BeagleBoard-DeviceTrees/src/arm64/overlays/robotics-cape.dtbo
