# used base images: https://github.com/hassio-addons/addon-base
# https://github.com/home-assistant/hassio-base
# https://github.com/hassio-addons/addon-example/blob/master/example/Dockerfile

#ARG BUILD_FROM=alpine:3.12.1
ARG BUILD_FROM=hassioaddons/base:8.0.3 
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

ENV CONFIG_PATH=/data/options.json
ENV APPDIR=/opt/MySensors

# Copy data for add-on
COPY rootfs /

# Setup base
RUN apk add --no-cache \
    git \
    openssh-client \
    coreutils \
    linux-headers \
    musl \
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
    org.opencontainers.image.title="MySensors Gateway Service" \
    org.opencontainers.image.description="MySensors Gateway Service implementation" \
    org.opencontainers.image.vendor="schalken.net" \
    org.opencontainers.image.authors="Jeroen Schalken <jeroen@schalken.net>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.url="https://addons.community" \
    org.opencontainers.image.source="https://github.com/schalkje/hassio-addons/addon-mysgw" \
    org.opencontainers.image.documentation="https://github.com/schalkje/hassio-addons/addon-mysgw/tree/master/README.md" \    
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.revision=${BUILD_REF} \
    org.opencontainers.image.version=${BUILD_VERSION}