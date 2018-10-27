#!/bin/bash

# . /device/motorola/panelli/patches/apply_patches.sh
cd ../../../..
cd system/core
echo $'\n--------------------\napplying system-core\n--------------------'
git apply -v ../../device/motorola/panelli/patches/system_core_ueventd_rc.patch
cd ../..
cd system/netd
echo $'\n\n\n--------------------\napplying system-netd\n--------------------'
git apply -v ../../device/motorola/panelli/patches/system_netd_hotspot.patch
cd ../..
cd external/apache-http
echo $'\n\n\n--------------------\napplying apache-http\n--------------------'
git apply -v ../../device/motorola/panelli/patches/apache_http.patch
cd ../..
cd packages/apps/FMRadio/jni/fmr/
echo $'\n\n\n-----------------\napplying fm radio\n-----------------'
git apply -v ../../../../../device/motorola/panelli/patches/fm_radio_power_up.patch
cd ../../../../..
