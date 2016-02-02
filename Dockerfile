# An essentially unadorned flask environment on CentOS 7
FROM centos:7
MAINTAINER Gary Walker (gewalker@gmail.com)
# Install compiler and tools
RUN yum -y install gcc autoconf make epel-release python-devel
# Install pip
RUN yum -y install python-pip
# Install Flask, pygal, and Fabric with pip
RUN pip install Flask pygal fabric
# Add a project volume where we will store our flask projects
RUN mkdir /project
VOLUME /storage/docker/volumes/flask_project:/project
