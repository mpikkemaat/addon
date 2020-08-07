
CONFIG_PATH=/data/options.json

SERIALPORT="$(jq --raw-output '.serialport' $CONFIG_PATH)"

echo "serial port is set to $SERIALPORT"

/tunslip6 -s $SERIALPORT fd00::1/64

