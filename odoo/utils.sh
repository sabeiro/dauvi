# It runs from the directory of a docker instance and for the docker-compose that is running
docker-composer stop
# Run from the directory of a docker instance and start the docker-compose
docker-composer start
# Stop all containers
docker stop $ (docker ps -a -q)
# Remove all containers
docker rm $ (docker ps -a -q)
# Delete all images
docker rmi $ (docker images -q)

