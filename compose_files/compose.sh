#!/bin/bash
contList="gluetun swag authelia bazarr ddns-updater flaresolverr heimdall jellyfin jellyseerr lidarr mylar3 portainer prowlarr qbittorrent radarr readarr sabnzbd sonarr tdarr unpackerr whisparr"

for contName in $contList
        do read -r -p "${contName}? [y/N]" response
                case $response in
                        [yY][eE][sS]|[yY])
                                sudo docker compose -f docker-compose-"${contName}".yaml up -d
                                echo "${contName} container started"
                        ;;
                        [nN][oO])
                                echo "next container"
                        ;;
                esac
done
