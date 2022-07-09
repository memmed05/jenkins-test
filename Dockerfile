FROM jenkins/jenkins

USER root

RUN apt-get update \
&& apt-get install -y sudo \
&& rm -rf /var/lib/apt/lists*

RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
RUN curl -sSL https://get.docker.com | sh
