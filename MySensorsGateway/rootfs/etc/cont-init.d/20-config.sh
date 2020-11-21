#!/usr/bin/env bashio
# ==============================================================================
# Ensures the configuration for the user exists
# ==============================================================================
# example code: 
#   https://github.com/hassio-addons/addon-vscode/blob/master/vscode/rootfs/etc/cont-init.d/user.sh for bashio
#   https://github.com/hassio-addons/bashio
# shellcheck disable=SC1091

# Ensure configuration exists
if ! bashio::fs.directory_exists '/config/mysensors/'; then
    mkdir -p /config/mysensors \
        || hass.die "Failed to create mysensors configuration folder"
fi

if ! bashio::fs.directory_exists '/config/mysensors/devices'; then
    mkdir -p /config/mysensors/devices \
        || hass.die "Failed to create mysensors devices folder"
fi

# create initial config file
if ! bashio::fs.file_exists '/config/mysensors/mysensors_devices.json'; then
    # Copy in template files
    cp /etc/mysensors/mysensors_devices.json /config/mysensors/
fi

# create initial config file
if ! bashio::fs.file_exists '/config/mysensors/mysensors.conf'; then
    cp /etc/mysensors/mysensors.conf /config/mysensors/
fi
