#!/bin/bash
mkdir out
sudo apt-get install gcc-arm-linux-gnueabi && sudo apt install xz-utils
git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9
#wget http://releases.linaro.org/components/toolchain/binaries/5.5-2017.10/aarch64-linux-gnu/gcc-linaro-5.5.0-2017.10-x86_64_aarch64-linux-gnu.tar.xz
#tar xf gcc-linaro-5.5.0-2017.10-x86_64_aarch64-linux-gnu.tar.xz
echo cloning gcc complete
export CROSS_COMPILE=${PWD}/platform/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/aarch64-linux-gnu-
#export CROSS_COMPILE=${PWD}/gcc-linaro-5.5.0-2017.10-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-

#rm log.txt
#make clean
#make distclean
export ARCH=arm64
export SUBARCH=arm64

make lineageos_j7elte_defconfig
#make -j$(nproc) O=out 2>&1 | tee kernel.log
make -j
#24 2>&1 | tee -a  log.txt
