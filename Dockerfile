FROM jenkins/jenkins:2.277.4

MAINTAINER sidiqputra (sidiq.putra@tiket.com)

USER jenkins

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
ENV JENKINS_UC_DOWNLOAD=https://mirrors.huaweicloud.com/jenkins/

COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
#RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt --latest false --verbose

