FROM jenkins/jenkins:lts
USER root
RUN apt-get update -y
RUN apt-get -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common
RUN curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey
RUN add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
    $(lsb_release -cs) \
    stable"
RUN apt-get update -y
RUN apt-get -y install docker-ce
RUN apt-get install -y docker-ce
RUN groupadd docker
RUN usermod -a -G docker jenkins
RUN chmod 777 /var/run/docker.sock

USER jenkins
