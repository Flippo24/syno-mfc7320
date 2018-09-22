# What is it ?
This is a synology package that will enable you to use a Brother MFC-7320 scanner on your synology NAS that supports Docker.

## How does it work ?
This package uses the synology's udev to start it's custom scripts when the scanner is connected or disconnected.
These scrips will start/stop a docker container (toxic0berliner/docker-brother-mfc7320) that does all the heavy lifting, allowing you to share the scanner over google-cloud-print, use the buiultin
keys of the scanner to actually scan and store the files on your NAS itself, as well as provide a web UI,i curtesy of scanservjs, allowing you to preview and scan from within your browser.


## Important Note
This package depends on docker.
This mackage works only for the model Brother MFC-7320, you'll need to find how to adapt it to your own device by yourself.

## How to use ?
```
git clone https://github.com/toxic0berliner/syno-mfc7320.git
cd syno-mfc7320
./build.sh 0.3
# you'll find a syno-mfc7320-0.3.spk in the parent folder, install it manually in the package center.
``` 
