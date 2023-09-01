#!/bin/bash
cd /opt/build/docker-mattermost
docker build -t synstd/mattermost .
docker tag synstd/mattermost synstd/mattermost:8.0.1
docker login --username=synstd
# тут нужно ввести пароль

docker push synstd/mattermost
docker push synstd/mattermost:8.1.0
