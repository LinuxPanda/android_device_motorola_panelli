## Device Tree for Motorola Moto C Plus [panelli]

Basic | Spec Sheet
-------:|:-------------------------
CPU | Cortex-A53 [Quad-core 1.3 GHz]
Chipset | MediaTek MT6737
GPU | Mali-T720MP2
RAM | 1/2 GB
Display | 5.0 inches
Storage | 16 GB
MicroSD | Dedicated, Up to 32GB
Resolution | 720 x 1280 pixels
SIM | Single/Dual SIM (Nano-SIM)
Battery | Li-Pol 4000mAh battery
Camera | Main 8MP / Front 2MP, 720p@30fps
Sensors | Acccelerometer
Shipped Android Version | Android 7.0 (Nougat)

## Working
- [x] Bluetooth
- [x] Camera
- [x] Flashlight
- [x] FM Radio
- [x] GPS (all modes)
- [x] Hotspot
- [x] Offline Charging
- [x] Ril
- [x] Sensors
- [x] Sound
- [x] Wifi

## Not Working:
- [ ] Volte

## Applying/Removing patches
Run command from root directory of ROM source. To apply AOSP patches, replace lineage with aosp.

Check - `./device/motorola/panelli/patches/lineage/check.sh`

Apply - `./device/motorola/panelli/patches/lineage/apply.sh`

Remove - `./device/motorola/panelli/patches/lineage/remove.sh`


## Credits
Thanks to [@DhirajSurvase](https://github.com/DhirajSurvase) for all the initial work and bringing up Nougat for panelli.

Thanks to [@SamarV-121](https://github.com/SamarV-121) for helping to bring up panelli with shims.

## Trees Reference/Credits
- https://github.com/Moyster/o_vendor_mediatek
- https://github.com/Motorola-MT6737/android_device_motorola_mt6737-common
- https://github.com/LineageOS-MediaTek/android_device_mediatek_common
- https://github.com/GearLabs/android_device_mediatek_mt6737-common
- https://github.com/MotorolaMobilityLLC/device-mediatek

## Patches Credit
Thanks to [@Moyster](https://github.com/Moyster) for patches scripts & some patches.

Thanks to [@DeckerSU](https://github.com/DeckerSU) for FM Radio & WiFI Tethering patches.

