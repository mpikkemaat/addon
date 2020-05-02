ARG BUILD_FROM
FROM $BUILD_FROM

LABEL io.hass.version="VERSION" io.hass.type="addon" io.hass.arch="armhf|amd64"


ENV LANG C.UTF-8

# Copy data for add-on
COPY run.sh /
# todo: check architecture
COPY tunslip6-{arch} /tunslip6
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]

