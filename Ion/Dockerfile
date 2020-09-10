ARG BUILD_FROM
FROM $BUILD_FROM

LABEL io.hass.version="VERSION" io.hass.type="addon" io.hass.arch="armv7|amd64"

ENV LANG C.UTF-8

ARG BUILD_ARCH

# Copy data for add-on
COPY run.sh /
COPY tunslip6-${BUILD_ARCH} /tunslip6

RUN chmod a+x /run.sh
RUN chmod a+x /tunslip6

CMD /run.sh

