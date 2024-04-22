#!/bin/bash
contList="authelia bazarr flaresolverr heimdall jellyfin jellyseerr lidarr prowlarr qbittorrent radarr readarr sabnzbd sonarr unpackerr whisparr"

for contName in $contList
        do mv "${contName}.subdomain.conf.sample" "${contName}.subdomain.conf";
done

