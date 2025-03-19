echo "Start setting up env"
echo "Trigger creation docker image"
docker buildx build -t node-alp-img .
echo "Trigger creation docker container and run process"
docker run -dit --name node-alp-serv -p 8080:80 -v $(pwd)/data/src:/var/www/html/app/src node-alp-img
echo "Env was setup"
