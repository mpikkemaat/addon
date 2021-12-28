
CONFIG_PATH=/data/options.json

SERIALPORT="$(jq --raw-output '.serialport' $CONFIG_PATH)"

echo "serial port is set to $SERIALPORT"

#dont remove the following lines, they make tunslip accept the hostname
#do these lines trigger the actual ip lookup?
echo "Looking up hostname:"
host $(hostname)
hostname -i

/tunslip6 -v -s $SERIALPORT fd00::1/64
#try to prevent some packets forcing the process to exit
echo 0 > /proc/sys/net/ipv6/auto_flowlabels
