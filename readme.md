# Addon

Click on the following icon to aid setup:

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fmpikkemaat%2Faddon)


Install the Ion addon and enter the right serial port in the configuration settings.

Install the Mosquitto addon and configure username ion with password ion:
logins: [
{"username": "ion", "password": "ion"}
]


When encountering problems, for the RPi3, setup the following:
in config.txt: 
- add enable_uart=1
- add dtoverlay=pi3-disable-bt
