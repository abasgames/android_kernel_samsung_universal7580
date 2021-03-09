#!/bin/bash
mkdir out
wget http://releases.linaro.org/components/toolchain/binaries/5.5-2017.10/aarch64-linux-gnu/gcc-linaro-5.5.0-2017.10-x86_64_aarch64-linux-gnu.tar.xz
unzip gcc-linaro-5.5.0-2017.10-x86_64_aarch64-linux-gnu.tar.xz
export CROSS_COMPILE=${PWD}/gcc-linaro-5.5.0-2017.10-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
#rm log.txt
#make clean
#make distclean
#export CROSS_COMPILE=/home/tien.tq1/toolchains/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export ARCH=arm64

make O=out exynos7580-j7elte_defconfig
make -j$(nproc) O=out 2>&1 | tee kernel.log
#make -j
#24 2>&1 | tee -a  log.txt
