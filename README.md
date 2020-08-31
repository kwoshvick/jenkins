# jenkins

sudo docker build -t jenkins-docker-image .

sudo docker run --name jenkins-docker --detach --restart always -p 9081:8080 -v /var/run/docker.sock:/var/run/docker.sock jenkins-docker-image:latest

sudo docker logs -f jenkins-docker

install the following plugins

*Docker Pipeline

*docker-build-step 
