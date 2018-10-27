#!/bin/bash

# . /device/motorola/panelli/patches/check_patches.sh
cd ../../../..
cd system/core
echo $'\n--------------------\nchecking system-core\n--------------------'
git apply -v --check ../../device/motorola/panelli/patches/system_core_ueventd_rc.patch
cd ../..
cd system/netd
echo $'\n\n\n--------------------\nchecking system-netd\n--------------------'
git apply -v --check ../../device/motorola/panelli/patches/system_netd_hotspot.patch
cd ../..
cd external/apache-http
echo $'\n\n\n--------------------\nchecking apache-http\n--------------------'
git apply -v --check ../../device/motorola/panelli/patches/apache_http.patch
cd ../..
cd packages/apps/FMRadio/jni/fmr/
echo $'\n\n\n-----------------\nchecking fm radio\n-----------------'
git apply -v --check ../../../../../device/motorola/panelli/patches/fm_radio_power_up.patch
cd ../../../../..
