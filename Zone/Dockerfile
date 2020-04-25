ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

# Copy data for add-on
COPY run.sh /
# todo: check architecture
COPY tunslip6-i386 /tunslip6
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
CMD [ "/tunslip6  -s /dev/ttyUSB1 fd00::1/64" ]

