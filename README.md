# Docker Container Builder

Builds a Docker container with steamcmd.

## Usage

```Dockerfile
FROM ghcr.io/mts-gaming/docker-steamcmd-base:latest
```

## Volumes

There are no Volume Definitions as this causes problems with non-root docker containers

| Path                                 | Description                                                                         |
|--------------------------------------|-------------------------------------------------------------------------------------|
| `/home/steam/.local`                 | Where games usually store their savegames.                                          |
| `/home/steam/Steam/steamapps/common` | Where games are installed by default (I.E. when `force_install_dir` is not defined) |
 
