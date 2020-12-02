
CONFIG_PATH=/data/options.json

SERIALPORT="$(jq --raw-output '.serialport' $CONFIG_PATH)"

echo "serial port is set to $SERIALPORT"

echo "Host #1"
host $(hostname)

echo "Host #2"
hostname -i

/tunslip6 -s $SERIALPORT -v4 fd00::1/64

