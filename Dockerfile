FROM centos:7

RUN yum update -y && yum install -y \
  httpd \
  ruby \
  wget \
  && yum clean all

RUN wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install \
  && chmod +x install \
  && ./install rpm
