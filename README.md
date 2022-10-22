# slackhq/nebula for docker

```console
$ docker build -t nebula .
$ docker run -v $CONFIG_DIR:/config --cap-add NET_ADMIN --device /dev/net/tun -p 4242:4242/udp nebula
```

