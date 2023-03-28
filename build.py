#!/usr/bin/python3

import os
if os.path.exists('/opt/build/docker-mattermost'):
  os.chdir('/opt/build/docker-mattermost')
  os.system('docker build -t synstd/mattermost .')
  os.system('docker tag synstd/mattermost synstd/mattermost:7.9.1')
  # os.system('docker login --username=synstd')
  # os.system('docker push synstd/mattermost')
  # os.system('docker push synstd/mattermost:7.9.1')
