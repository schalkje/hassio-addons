ARG BUILD_FROM=hassioaddons/base:5.0.1
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

ENV CONFIG_PATH=/data/options.json
ENV APPDIR=/opt/MySensors

# Copy data for add-on
COPY rootfs /

# Setup base
# RUN apk add --no-cache \
#     jq curl git openssh-client \
#     coreutils \
#     wget \
#     && git clone https://github.com/mysensors/MySensors.git --branch master /opt/MySensors
RUN apk add --no-cache \
    jq \
    curl \
    git \
    openssh-client \
    coreutils \
    linux-headers \
    build-base \
    wget \
    make \
    g++ \
    && git clone https://github.com/schalkje/MySensors.git --branch development $APPDIR

ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_REF
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.name="MySensors Gateway" \
    io.hass.description="MySensors Gateway" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Jeroen Schalken <jeroen@schalken.net>" \
    org.label-schema.description="MySensors Gateway Service" \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="MySensors Gateway Service" \
    org.label-schema.schema-version="0.2" \
    org.label-schema.url="https://addons.community" \
    org.label-schema.usage="https://github.com/schalkje/hassio-addons/addon-mysgw/tree/master/README.md" \
    org.label-schema.vcs-ref=${BUILD_REF} \
    org.label-schema.vcs-url="https://github.com/schalkje/hassio-addons/addon-mysgw" \
    org.label-schema.vendor="schalken.net"
