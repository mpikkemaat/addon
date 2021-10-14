
CONFIG_PATH=/data/options.json

SERIALPORT="$(jq --raw-output '.serialport' $CONFIG_PATH)"

echo "serial port is set to $SERIALPORT"

#dont remove the following lines, they make tunslip accept the hostname
#do these lines trigger the actual ip lookup?
echo "Looking up hostname:"
host $(hostname)
hostname -i

/tunslip6 -v 3 -s $SERIALPORT fd00::1/64

