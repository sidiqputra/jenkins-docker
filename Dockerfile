FROM jenkins/jenkins:2.289.1

MAINTAINER sidiqputra (muhammadsidiqputra@gmail.com)

USER jenkins

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
ENV JENKINS_UC_DOWNLOAD=https://mirrors.huaweicloud.com/jenkins/

COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt --latest false --verbose

