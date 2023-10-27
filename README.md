# Nodejs app Docker example

Running two nodejs apps using single docker image

## Authors

- [@kolaarunkumar](https://github.com/kolaarunkumar)

## Docker Deployment steps

- Building your image

Go to the directory that has your Dockerfile and run the following command to build the Docker image. The -t flag lets you tag your image so it's easier to find later using the docker images command:

```bash
  docker build . -t node-web-app
```

- Your image will now be listed by Docker:

```bash
  docker images
```

- Run the image
  Running your image with -d runs the container in detached mode, leaving the container running in the background. The -p flag redirects a public port to a private port inside the container. Run the image you previously built:

```bash
  docker run -p 3000:3000 -p 3001:3001 -d node-web-app
```

- Get container ID

```bash
  docker ps
```

- Print app output

```bash
  docker logs <container id>
```

## Tech Stack

**Server:** Node, Express, Docker

Hit api "http://localhost:3000 and http://localhost:3001

## Extensive list of Docker commands with their uses:

1. `docker run`: Create and start a new container from a Docker image.
2. `docker build`: Build a Docker image from a Dockerfile.
3. `docker pull`: Pull a Docker image from a container registry.
4. `docker push`: Push a Docker image to a container registry.
5. `docker images`: List all Docker images on your local machine.
6. `docker ps`: List running containers.
7. `docker exec`: Execute a command within a running container.
8. `docker stop`: Stop a running container.
9. `docker rm`: Remove one or more containers.
10. `docker rmi`: Remove one or more Docker images.
11. `docker network create`: Create a new Docker network.
12. `docker network ls`: List Docker networks.
13. `docker network inspect`: Display detailed information about a Docker network.
14. `docker network connect`: Connect a container to a Docker network.
15. `docker network disconnect`: Disconnect a container from a Docker network.
16. `docker volume create`: Create a Docker volume.
17. `docker volume ls`: List Docker volumes.
18. `docker volume inspect`: Display detailed information about a Docker volume.
19. `docker volume rm`: Remove a Docker volume.
20. `docker-compose up`: Start and run a multi-container Docker application defined in a Docker Compose file.
21. `docker-compose down`: Stop and remove containers, networks, and volumes created by `docker-compose up`.
22. `docker-compose build`: Build Docker images for services defined in a Docker Compose file.
23. `docker-compose logs`: View the logs of services running with `docker-compose`.
24. `docker-compose ps`: List containers created by `docker-compose`.
25. `docker login`: Log in to a container registry.
26. `docker logout`: Log out from a container registry.
27. `docker inspect`: Display detailed information about a Docker object (container, image, volume, etc.).
28. `docker cp`: Copy files/folders between a container and the host machine.
29. `docker attach`: Attach to a running container's STDIN, STDOUT, and STDERR.
30. `docker rename`: Rename a Docker container.
31. `docker restart`: Restart a Docker container.
32. `docker pause`: Pause a running container.
33. `docker unpause`: Unpause a paused container.
34. `docker top`: Display the running processes of a container.
35. `docker stats`: Display real-time usage statistics of containers.
36. `docker events`: Stream real-time events from the Docker server.
37. `docker port`: List port mappings of a container.
38. `docker save`: Save a Docker image to a tar archive.
39. `docker load`: Load a Docker image from a tar archive.
40. `docker commit`: Create a new image from a container's changes.
