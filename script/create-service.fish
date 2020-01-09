#!/usr/bin/env fish

kubectl expose deployment hello-node --type=LoadBalancer --port=8080
kubectl get services
