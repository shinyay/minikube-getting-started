#!/usr/bin/env fish

kubectl create deployment hello-node --image=shinyay/hello-node:1.0.0
kubectl get pods
kubectl get deployments
