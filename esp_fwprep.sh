#!/bin/bash
#
#
# esp_fwprep.sh
#
#

OUT_NAME="eagle.app.v6"
BIN_PATH=".output/eagle/debug/image"
PKG=""

if [ ! "$1" ] ; then
  echo "please specify a build directory"
  exit -1
else
	PKG="$1"
fi

if [ ! -f "${PKG}/${BIN_PATH}/${OUT_NAME}.out" ] ; then
	echo "${PKG}/${BIN_PATH}/${OUT_NAME}.out not found"
	exit -1
fi

# cd .output/eagle/debug/image
esptool -eo "${PKG}/${BIN_PATH}/${OUT_NAME}.out" -bo "${PKG}/${BIN_PATH}/${OUT_NAME}.flash.bin" -bs .text -bs .data -bs .rodata -bc -ec
xtensa-lx106-elf-objcopy --only-section .irom0.text -O binary "${PKG}/${BIN_PATH}/${OUT_NAME}.out" "${PKG}/${BIN_PATH}/${OUT_NAME}.irom0text.bin"
rm -rf ${PKG}/firmware
mkdir -p ${PKG}/firmware
cp ${PKG}/${BIN_PATH}/${OUT_NAME}.flash.bin ${PKG}/firmware/
cp ${PKG}/${BIN_PATH}/${OUT_NAME}.irom0text.bin ${PKG}/firmware/

echo "output is in ${PKG}/${BIN_PATH}/firmware/"



