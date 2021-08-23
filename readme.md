# Addon

Install the Ion addon and enter the right serial port in the configuration settings.

Install the Mosquitto addon and configure username ion with password ion:
logins: [
{"username": "ion", "password": "ion"}
]


When encountering problems, for the RPi3, setup the following:
in config.txt: 
- add enable_uart=1
- add dtoverlay=pi3-disable-bt
