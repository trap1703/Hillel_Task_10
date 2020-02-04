FROM jenkins/jenkins:lts
ENV CASC_JENKINS_CONFIG="/var/jenkins_home/casc_configs/jenkins.yaml"
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY jenkins.yaml ${CASC_JENKINS_CONFIG}
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
