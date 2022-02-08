#!/bin/bash -ev

#DT_DIR=/opt/source/BeagleBoard-DeviceTrees
DT_DIR=/opt/source/dtb-5.10-ti-arm64

BOOT_DIR=/boot/firmware

cd $DT_DIR

make clean

make

sudo make install

sudo fdtoverlay -i $DT_DIR/src/arm64/k3-j721e-beagleboneai64.dtb -o $BOOT_DIR/k3-j721e-beagleboneai64.dtb $DT_DIR/src/arm64/overlays/robotics-cape.dtbo
