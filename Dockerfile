FROM synst/php7
MAINTAINER Synapse <mail@synapse-studio.ru>

#APT-GET:::
RUN wget https://releases.mattermost.com/4.1.0/mattermost-4.1.0-linux-amd64.tar.gz && \
    tar -xvzf mattermost*.gz && \
    mv mattermost /opt && \
    rm mattermost*.gz && \
    mkdir /opt/mattermost/data

#COPY script & config:::
COPY config/supervisor/supervisord.conf /etc/supervisord.conf
COPY config/start.sh /start.sh

#Fix ownership
RUN chmod 755 /start.sh && \
    chown www-data.www-data /var/spool/cron/crontabs/www-data && \
    chmod 0777 /var/spool/cron/crontabs && \
    chmod 0600 /var/spool/cron/crontabs/www-data

# Expose Ports
EXPOSE 22

ENTRYPOINT ["/start.sh"]
