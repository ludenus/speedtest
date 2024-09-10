FROM ubuntu:22.04

ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

# https://www.speedtest.net/apps/cli
RUN apt-get update && \
    apt-get install -y curl && \
    curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | bash && \
    apt-get install speedtest && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY speedtest-cli.json /root/.config/ookla/speedtest-cli.json
COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
