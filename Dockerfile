FROM centos:7
LABEL maintainer="Sirichai Kiatwanitwilai"

RUN yum update -y
RUN yum install -y wget
RUN wget https://bintray.com/kong/kong-rpm/rpm -O bintray-kong-kong-rpm.repo
RUN yum install -y kong

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 8000 8443 8001 8444

CMD ["kong", "docker-start"]
