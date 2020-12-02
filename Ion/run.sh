
CONFIG_PATH=/data/options.json

SERIALPORT="$(jq --raw-output '.serialport' $CONFIG_PATH)"

echo "serial port is set to $SERIALPORT"

host $(hostname)

/tunslip6 -s $SERIALPORT -v4 fd00::1/64

