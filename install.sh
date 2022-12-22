#!/bin/bash

VERSION="${KTLINT_VERSION:-0.47.1}"
curl -sSL "https://api.github.com/repos/pinterest/ktlint/releases" \
    | grep "browser_download_url.*ktlint\"" \
    | cut -d : -f 2,3 \
    | tr -d \" \
    | grep $VERSION \
    | wget -qi -

if [ $? -eq 0 ]; then
   chmod a+x ktlint \
    && mv ktlint /usr/local/bin/
else
   echo "Failed to download KTLint with version = $VERSION"
fi
