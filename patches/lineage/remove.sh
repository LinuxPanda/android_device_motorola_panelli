#!/bin/sh

echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic external/apache-http packages/apps/FMRadio packages/apps/Settings system/core system/netd"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo -e "\n Cleaning $dir patches...\n"
	git checkout -- . && git clean -df
done

# -----------------------------------
echo -e "Done !\n"
cd $rootdirectory
