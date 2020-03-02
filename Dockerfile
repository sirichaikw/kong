FROM centos:latest
LABEL maintainer="Sirichai Kiatwanitwilai"

ENV KONG_VERSION 2.0.1

RUN yum install epel-release
RUN yum install kong-2.0.2.*.noarch.rpm --nogpgcheck

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 8000 8443 8001 8444

CMD ["kong", "docker-start"]
