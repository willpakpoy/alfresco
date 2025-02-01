FROM --platform=linux/amd64 debian:bookworm

WORKDIR /tmp/alfresco
ENV DEBIAN_FRONTEND=noninteractive

# COPY --chmod=0755 ./scripts /root/scripts
# RUN find /root/scripts -name '*.sh' -exec chmod a+x {} +

# RUN mkdir /tmp/alfresco

COPY --chmod=0755 ./scripts/packages-core.sh .
RUN ./packages-core.sh


COPY --chmod=0755 ./scripts/packages-de.sh .
RUN ./packages-de.sh

WORKDIR /tmp/alfresco/software
COPY --chmod=0755 ./scripts/software-download.sh .
RUN ./software-download.sh

COPY --chmod=0755 ./scripts/software.sh .
RUN ./software.sh

WORKDIR /tmp/alfresco
COPY --chmod=0755 ./scripts/ssh.sh .
RUN ./ssh.sh

COPY --chmod=0755 ./scripts/createuser.sh .
COPY --chmod=0755 ./scripts/software-development-environment.sh .
# RUN ./createuser.sh


COPY extras /

EXPOSE 3389 22 443 8444
ENTRYPOINT ["/tmp/alfresco/docker-entrypoint.sh"]