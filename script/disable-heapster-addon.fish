#!/usr/bin/env fish

minikube addons disable heapster
kubectl get pod,svc -n kube-system
