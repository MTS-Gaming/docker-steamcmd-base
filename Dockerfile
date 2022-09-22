FROM debian:stable-slim

LABEL org.opencontainers.image.authors="andrew_stclair@hotmail.com"
LABEL description="steamcmd base image for use when building game server containers"
LABEL version="v1.0.1"

RUN apt update; apt install -y lib32gcc-s1 curl;\
    useradd -m steam; \
    chown -R steam:steam /home/steam

USER steam:steam

RUN mkdir -p ~/steamcmd;\
    cd ~/steamcmd;\
    curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -;\
    /home/steam/steamcmd/steamcmd.sh +quit

WORKDIR /home/steam
VOLUME [ "/home/steam/.local" ]
ENTRYPOINT [ "/home/steam/steamcmd/steamcmd.sh" ]
SHELL [ "/home/steam/steamcmd/steamcmd.sh", "+login", "anonymous" ]
