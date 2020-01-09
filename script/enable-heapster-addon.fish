#!/usr/bin/env fish

minikube addons enable heapster
kubectl get pod,svc -n kube-system
