#!/usr/bin/env bash

deployment_name="microservice-project-app"
app_name="microservices"
app_version="v1.0.1"
docker_id="peterhuynh99"
dockerpath="${docker_id}/${app_name}:${app_version}"
echo "image path: ${dockerpath}"


kubectl create deployment ${deployment_name} --image=${dockerpath}


kubectl get pods 

sleep 30
pod_name=$(kubectl get pods | grep ${deployment_name} | awk '{print $1}')
echo "pod name: ${pod_name}"
echo "Forwarding port..."
sleep 30
kubectl get pods 
kubectl expose deployment ${deployment_name} --type="NodePort" --port=80
kubectl port-forward pod/${pod_name} --address 0.0.0.0 8000:80

