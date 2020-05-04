#!/usr/bin/with-contenv bashio

CONFIG_PATH=/data/options.json

SERIALPORT="$(jq --raw-output '.serialport' $CONFIG_PATH)"

echo "Zone addon starting"

ls 

echo "serial port is set to"
echo $SERIALPORT

ldd /tunslip6

/tunslip6  -s $SERIALPORT fd00::1/64

