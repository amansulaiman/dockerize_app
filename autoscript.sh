chmod +x autoscript.sh
if [ -x "$(command -v docker)" ]; then
    docker-compose up --build 
else
    echo "Please update your docker on this machine" &&
    python -mwebbrowser -t "https://www.docker.com/get-docker"
fi