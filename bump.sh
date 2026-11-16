#!/bin/sh
# bump app version so installed copies (iOS home screen) reload themselves
V=$(date -u +%Y%m%d%H%M%S)
sed -i "s/const APP_VERSION=\"[^\"]*\"/const APP_VERSION=\"$V\"/" index.html
printf '{"v":"%s"}\n' "$V" > version.json
echo "$V"
