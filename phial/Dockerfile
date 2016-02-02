# An essentially unadorned flask environment on CentOS 7
FROM centos:7
MAINTAINER Gary Walker (gewalker@gmail.com)
# Install compiler and tools
RUN yum -y install gcc autoconf make
# Enable the EPEL Repository
RUN yum -y install epel-release
# Install pip
RUN yum -y install python-pip python-devel
# Install Flask with pip
RUN pip install Flask
# Install pygal for charts
RUN pip install pygal
# Install Fabric for automating things
RUN pip install fabric
# Add a project volume where we will store our flask projects
RUN mkdir /project
VOLUME /storage/docker/volumes/flask_project:/project
