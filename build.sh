#!/bin/bash
cd /opt/build/docker-mattermost
docker build -t synstd/mattermost .
docker tag synstd/mattermost synstd/mattermost:7.9.1
docker login --username=synstd
# тут нужно ввести пароль

docker push synstd/mattermost
docker push synstd/mattermost:7.9.1
