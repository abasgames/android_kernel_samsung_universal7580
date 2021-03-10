sudo apt-get install gcc-arm-linux-gnueabi
mkdir out
wget http://releases.linaro.org/components/toolchain/gcc-linaro/4.9-2017.01/gcc-linaro-4.9-2017.01.tar.xz
tar xf gcc-linaro-4.9-2017.01.tar.xz
echo unzip complete
export CROSS_COMPILE=${PWD}/gcc-linaro-4.9-2017.01/
sudo chmod 755 /gcc-linaro-4.9-2017.01/gcc
#rm log.txt
#echo wtf
#make clean
#make distclean

export ARCH=arm64
export SUBARCH=arm64

make O=out lineageos_j7elte_defconfig
su
make -j$(nproc) O=out 2>&1 | tee kernel.log
