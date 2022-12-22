#!/bin/bash

cd config
helm dependency update
helm upgrade qod --install --values values.yaml .

helm repo add bitnami https://charts.bitnami.com/bitnami
helm install my-release bitnami/redis
