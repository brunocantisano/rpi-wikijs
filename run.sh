docker run --rm --name wikijs -d -p 9406:3000 \
           -v `pwd`/files/wikijs/config.yml:/var/wiki/config.yml \
           paperinik/rpi-wikijs
