#!/usr/bin/with-contenv bashio

CONFIG_PATH=/data/options.json

SERIALPORT="$(jq --raw-output '.serialport' $CONFIG_PATH)"
#BUILD_ARCH="$(jq --raw-output ".build_arch" $CONFIG_PATH)"

echo "Zone addon starting"
echo "This system appears to be a $BUILD_ARCH"

/tunslip6  -s $SERIALPORT fd00::1/64

