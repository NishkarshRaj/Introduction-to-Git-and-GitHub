# Base Image
FROM ubuntu

# Commands to be executed on Image Creation
RUN apt-get -y upgrade && apt-get -y update

# Install Python
RUN apt install -y python3
RUN python3 --version

# Install Java
RUN apt install -y openjdk-11-jre-headless
RUN java --version

# Install C++ Compiler
RUN apt install -y g++
RUN g++ --version

# Install Docker
RUN apt install -y docker.io
RUN docker --version

# Move GitHub source files to Docker Image
RUN mkdir /src
ADD src/ /src
WORKDIR /src
