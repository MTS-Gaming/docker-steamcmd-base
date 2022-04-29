FROM debian:stable-slim

RUN apt update; apt install -y lib32gcc-s1 curl;\
    useradd -m steam

USER steam:steam

RUN mkdir -p ~/steamcmd;\
    cd ~/steamcmd;\
    curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -;\
    /home/steam/steamcmd/steamcmd.sh +quit

WORKDIR /home/steam/Steam/steamapps/common
VOLUME [ "/home/steam/.local" ]
ENTRYPOINT [ "/home/steam/steamcmd/steamcmd.sh" ]
SHELL [ "/home/steam/steamcmd/steamcmd.sh", "+login", "anonymous" ]
