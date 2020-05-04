ARG BUILD_FROM=bitnami/minideb:jessie
FROM $BUILD_FROM

LABEL io.hass.version="VERSION" io.hass.type="addon" io.hass.arch="armhf|amd64"

ENV LANG C.UTF-8

ARG BUILD_ARCH

# Copy data for add-on
COPY run.sh /
COPY tunslip6-${BUILD_ARCH} /tunslip6

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]

