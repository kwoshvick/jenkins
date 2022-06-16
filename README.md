# jenkins

sudo docker build -t jenkins-docker-image .

sudo docker run --name jenkins-docker --detach --restart always -p 9081:8080 -v /var/run/docker.sock:/var/run/docker.sock jenkins-docker-image:latest

sudo docker logs -f jenkins-docker

install the following plugins

* Docker Pipeline

* docker-build-step 

* GitLab

sudo ufw allow jenkins_port


# Image registry

sudo docker pull registry

sudo docker run -d -p 9082:5000 --restart=always --name jenkins-registry registry:latest

sudo ufw allow registry_port

Navigate to /etc/docker/daemon.json

Add the followin json

{
  "insecure-registries" : ["ip:port"]
}


