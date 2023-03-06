FROM lgatica/redis-sentinel:4.0.2

RUN rm -rf /usr/local/bin/sentinel-entrypoint.sh
ADD sentinel.conf /usr/local/bin/sentinel.conf
ADD sentinel-entrypoint.sh /usr/local/bin/sentinel-entrypoint.sh

RUN chmod 755 /usr/local/bin/sentinel.conf
RUN chmod 755 /usr/local/bin/sentinel-entrypoint.sh
RUN chown redis:redis /usr/local/bin/sentinel.conf
RUN chown redis:redis /usr/local/bin/sentinel-entrypoint.sh

EXPOSE $CLIENTPORT
ENTRYPOINT ["/usr/local/bin/sentinel-entrypoint.sh"]
CMD [ "redis-server","/usr/local/bin/sentinel.conf", "--sentinel" ]
