#!/bin/sh
if [ ! -f UUID ]; then
  UUID="bac74d84-78c0-4767-9ceb-bb7235842e43"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

