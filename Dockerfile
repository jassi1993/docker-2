FROM centos:7
RUN  yum -y update
RUN yum -y install weget nginx vim net-tools 
RUN echo "my last project" > /root/file.txt
COPY test.txt  /usr/share/
COPY ./server/tr.txt  /tmp/tr.txt
EXPOSE 8080/tcp
CMD ["bash"]

