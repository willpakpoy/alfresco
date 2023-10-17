FROM --platform=linux/amd64 debian:bookworm

WORKDIR /root

ADD ./scripts /root/scripts
RUN find /root/scripts -name '*.sh' -exec chmod a+x {} +

RUN /root/scripts/packages-core.sh
RUN /root/scripts/packages-de.sh
RUN /root/scripts/createuser.sh
RUN /root/scripts/ssh.sh

COPY supervisord.conf /etc/supervisor/supervisord.conf

EXPOSE 3389 22

CMD ["/usr/bin/supervisord"]
