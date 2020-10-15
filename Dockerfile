FROM gogs/gogs

ENV TZ=Asia/Shanghai

RUN \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    apk add --no-cache libcap && \
    echo 'setcap CAP_NET_BIND_SERVICE=+ep /app/gogs/gogs' >> /app/gogs/docker/s6/gogs/setup
