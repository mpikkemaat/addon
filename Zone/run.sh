#!/usr/bin/with-contenv bashio

CONFIG_PATH=/data/options.json

echo "This system appears to be a $BUILD_ARCH"

SERIALPORT="$(jq --raw-output '.serialport' $CONFIG_PATH)"
/tunslip6  -s $SERIALPORT fd00::1/64

