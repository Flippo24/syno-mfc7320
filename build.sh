#!/bin/bash


#check we are in the correct directory
script_name=$0
script_full_path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
package_name=$(basename $script_full_path)
version=${1:-"0.4"}


cd $script_full_path

echo "create the tarball of the package subfolder..."
cd package 
#tar -cvzf package.tgz *
tar -czf package.tgz *
cd ..

echo "Prepare our build directory..."
mkdir build
mv package/package.tgz build

for file in *; do
	if [ $file != "package" ] && [ $file != "build" ] && [ $file != "build.sh" ]; then
		cp -ar $file build
	fi
done

echo "Building $package_name-$version.spk ..."
cd build
tar -cf $package_name-$version.spk *
mv $package_name-$version.spk ../../
cd ..

# Cleanup
rm -rf build

