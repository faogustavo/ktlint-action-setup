#!/bin/bash

VERSION="${KTLINT_VERSION:-0.42.1}"
curl -SL "https://api.github.com/repos/pinterest/ktlint/releases" \
    | grep "browser_download_url.*ktlint\"" \
    | cut -d : -f 2,3 \
    | tr -d \" \
    | grep $VERSION \
    | wget -i -

if [ $? -eq 0 ]; then
   chmod a+x ktlint \
    && mv ktlint /usr/local/bin/
else
   echo "FAILED TO DOWNLOAD VERSION $VERSION"
fi