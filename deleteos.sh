docker-compose down --rmi all 2>/dev/null
docker volume rm  -f $(docker volume ls -q) 2>/dev/null
docker rmi -f $(docker image ls -qa) 2>/dev/null
docker rm -f $(docker ps -qa) 2>/dev/null
docker network rm $(docker network ls -q) 2>/dev/null
