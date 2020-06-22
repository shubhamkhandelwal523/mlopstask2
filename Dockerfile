FROM centos:8
RUN yum install wget -y
RUN yum install net-tools -y

RUN wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat-stable/jenkins.repo
RUN rpm --import http://pkg.jenkins.io/redhat-stable/jenkins.io.key
RUN yum upgrade -y
RUN yum install java -y
RUN yum install jenkins -y
RUN yum install git -y
RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL">>/etc/sudoers
RUN yum install python3 -y
cmd java -jar /usr/lib/jenkins/jenkins.war

