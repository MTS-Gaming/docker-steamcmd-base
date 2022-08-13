# Docker Container Builder

Builds a Docker container with steamcmd.

## Usage

```Dockerfile
FROM ghcr.io/mts-gaming/docker-steamcmd-base:latest
```

## Volumes

| Path                                 | Description                                                                         | Volume Definition |
|--------------------------------------|-------------------------------------------------------------------------------------|-------------------|
| `/home/steam/.local`                 | Where games usually store their savegames.                                          | Yes               |
| `/home/steam/Steam/steamapps/common` | Where games are installed by default (I.E. when `force_install_dir` is not defined) | No                |
 
