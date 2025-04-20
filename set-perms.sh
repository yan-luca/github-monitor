#!/bin/bash
# Probably not necessary for every docker setup, but definitely necessary if you're running SE Linux
mkdir -p grafana-data
sudo chown -R 472:472 grafana-data provisioning dashboards
sudo chmod -R 755 grafana-data provisioning dashboards
sudo chmod 644 grafana.ini
