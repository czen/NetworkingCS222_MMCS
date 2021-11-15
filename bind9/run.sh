docker run \
        --name=bind9 \
        --restart=always \
        --publish 54:53/udp \
        --publish 54:53/tcp \
        --publish 127.0.0.1:953:953/tcp \
        --volume "`pwd`/etc_bind":/etc/bind \
        --volume /var/cache/bind \
        --volume /var/lib/bind \
        --volume /var/log \
        -d \
        internetsystemsconsortium/bind9:9.16
