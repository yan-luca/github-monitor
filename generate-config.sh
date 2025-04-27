#!/bin/bash

source .env

cat grafana.ini.template | \
  sed "s|\${GF_SERVER_ROOT_URL}|$GF_SERVER_ROOT_URL|g" | \
  sed "s|\${GF_SERVER_DOMAIN}|$GF_SERVER_DOMAIN|g" | \
  sed "s|\${GF_SERVER_ENFORCE_DOMAIN}|$GF_SERVER_ENFORCE_DOMAIN|g" \
  > grafana.ini

echo "Generated grafana.ini"
