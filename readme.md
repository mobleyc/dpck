# Docker Commands

Rebuild an Image:
    docker-compose up --build

Normal startup:
    docker-compose up

Startup as daemon:
    docker-compose up -d

Shutdown and delete container:
    docker-compose down

Shutdown only:
    docker-compose stop

Attach to running docker image:
    docker exec -it <container id or name> bash
