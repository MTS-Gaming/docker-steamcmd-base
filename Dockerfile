FROM debian:stable-slim

RUN apt update; apt install -y lib32gcc-s1 curl;\
    useradd -m steam;\
    su - steam;\
    mkdir ~/steamcmd; cd ~/steamcmd;\
    curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -

CMD [ "/bin/su", "-", "steam", "-c", "/home/steam/steamcmd/steamcmd.sh" ]
