#!/usr/bin/python

import os
if os.path.exists('/opt/docker-mattermost'):
  os.chdir('/opt/docker-mattermost')
  os.system('docker build -t mattermost .')
  os.system('docker tag mattermost synst/mattermost:4.1.0')
