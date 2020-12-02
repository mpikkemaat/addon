
CONFIG_PATH=/data/options.json

SERIALPORT="$(jq --raw-output '.serialport' $CONFIG_PATH)"

echo "serial port is set to $SERIALPORT"

/tunslip6 -s $SERIALPORT -a 172.30.32.1 -v4 fd00::1/64

