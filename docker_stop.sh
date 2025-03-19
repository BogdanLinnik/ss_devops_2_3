echo "Start resetting existing env setup"
echo "Stop running docker process"
docker stop node-alp-serv
echo "Remove docker container"
docker rm node-alp-serv
echo "Remove docker image"
docker rmi node-alp-img
echo "Env setup was reset"
