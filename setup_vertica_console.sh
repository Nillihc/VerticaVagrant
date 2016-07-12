#!/bin/bash

# automatically start vertica agent. In 7.2.3 its systemd packagingfor
# centos 7 is still a mess.
cp /vagrant/vertica_agent.service /etc/systemd/system
systemctl daemon-reload
systemctl enable vertica_agent.service
systemctl start vertica_agent.service

# install console
sudo rpm -Uvh vertica-console-7.2.3-0.x86_64.RHEL6.rpm
