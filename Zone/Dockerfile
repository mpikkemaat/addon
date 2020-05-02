ARG BUILD_FROM=
FROM $BUILD_FROM

LABEL io.hass.version="VERSION" io.hass.type="addon" io.hass.arch="armhf|amd64"

ENV LANG C.UTF-8

ARG BUILD_ARCH

# Copy data for add-on
COPY run.sh /
# todo: check architecture
COPY tunslip6-${BUILD_ARCH} /tunslip6

RUN \
    chmod a+x /run.sh \
    apk add --no-cache --virtual gcc g++

CMD [ "/run.sh" ]

