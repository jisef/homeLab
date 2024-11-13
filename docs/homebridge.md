# Homebridge
source: https://github.com/homebridge/homebridge/wiki/Install-Homebridge-on-Docker
install docker compose
and run: `docker-compose up -d`
add docker-compose.yml:
```
version: '2'
services:
  homebridge:
    image: homebridge/homebridge:latest
    restart: always
    network_mode: host
    volumes:
      - ./volumes/homebridge:/homebridge
    logging:
      driver: json-file
      options:
        max-size: "10mb"
        max-file: "1"
```

