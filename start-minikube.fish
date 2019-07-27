#!/usr/bin/env fish

minikube delete & minikube start --vm-driver=hyperkit
kubectl cluster-info
