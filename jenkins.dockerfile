FROM jenkins/jenkins:alpine
MAINTAINER Nikoloz Jakhua

USER root
RUN chown -R jenkins:jenkins /var/jenkins_home
USER jenkins

EXPOSE 8080
# EXPOSE 50000 # uncomment this line if you want to attach slaves to this container




