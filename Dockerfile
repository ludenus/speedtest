FROM ubuntu:18.04

ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

# https://www.speedtest.net/apps/cli
RUN apt-get update                                                 &&\
    apt-get install -y                                               \
            gnupg1                                                   \
            apt-transport-https                                      \
            dirmngr                                                &&\
    export INSTALL_KEY=379CE192D401AB61                              \
# Ubuntu versions supported: xenial, bionic
# Debian versions supported: jessie, stretch, buster
    export DEB_DISTRO='bionic'                                     &&\
    apt-key adv                                                      \
            --keyserver keyserver.ubuntu.com                         \
            --recv-keys $INSTALL_KEY                               &&\
    echo "deb https://ookla.bintray.com/debian ${DEB_DISTRO} main"   \
       | tee  /etc/apt/sources.list.d/speedtest.list               &&\
    apt-get update                                                 &&\
    apt-get install -y speedtest

COPY speedtest-cli.json /root/.config/ookla/speedtest-cli.json
COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
