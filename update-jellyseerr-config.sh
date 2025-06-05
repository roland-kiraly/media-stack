#!/bin/bash
CONFIG_FILE="/app/config/settings.json"
cat $CONFIG_FILE | jq ".plex.ip = \"plex\" | .plex.port = 32400" > /tmp/settings.new.json
cat /tmp/settings.new.json > $CONFIG_FILE
