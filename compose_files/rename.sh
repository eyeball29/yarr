#!/bin/bash
contList="gluetun swag authelia bazarr ddns-updater flaresolverr heimdall jellyfin jellyseerr lidarr mylar3 portainer prowlarr qbittorrent radarr readarr sabnzbd sonarr unpackerr whisparr"

for contName in $contList
        do find . -name "${contName}.subdomain.conf.sample" -type f -exec bash -c 'mv "$1" "${1/\/conf.sample/\/conf}"' -- {} \;
done
