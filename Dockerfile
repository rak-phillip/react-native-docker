# Get initial image
FROM centos:7
MAINTAINER Phillip Rak <rak.phillip@gmail.com>

# Update container
RUN yum update -y

# Install nodejs and build tools
RUN curl --silent --location https://rpm.nodesource.com/setup_8.x | bash -
RUN yum -y install nodejs
RUN yum -y install gcc-c++ make

# Install create-react-native-app
RUN npm install -g create-react-native-app
