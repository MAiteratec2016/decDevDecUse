FROM alpine
MAINTAINER thomas.steinbach at aikq de

COPY access.log /logs/access.log
RUN chmod 0755 /logs

COPY start.sh /opt/start.sh
RUN chmod +x /opt/start.sh

VOLUME /logs

CMD ["sh","/opt/start.sh"]
