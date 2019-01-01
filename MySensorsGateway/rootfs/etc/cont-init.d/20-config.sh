#!/usr/bin/with-contenv bash
# ==============================================================================
# Ensures the configuration for the user exists
# ==============================================================================
# shellcheck disable=SC1091
source /usr/lib/hassio-addons/base.sh

# Ensure configuration exists
if ! hass.directory_exists '/config/mysensors/'; then
    mkdir -p /config/mysensors/devices \
        || hass.die "Failed to create mysensors configuration directory"

    # Copy in template files
    cp /etc/mysensors/mysensors_devices.json /config/mysensors/
fi