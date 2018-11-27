#!/bin/sh

echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic external/apache-http packages/apps/FMRadio packages/apps/Settings system/core system/netd"

# red + nocolor
RED='\033[0;31m'
NC='\033[0m'


for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
        echo "\n${RED}Checking ${NC}$dir ${RED}patches...${NC}\n"
	git apply -v --check $rootdirectory/device/motorola/panelli/patches/lineage/$dir/*.patch
done

# -----------------------------------
echo "Done !\n"
cd $rootdirectory

