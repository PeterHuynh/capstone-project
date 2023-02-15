[![CircleCI](https://dl.circleci.com/status-badge/img/gh/PeterHuynh/capstone-project/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/PeterHuynh/capstone-project/tree/main)

## Project Overview

This is my Cloud DevOps Capstone Project. The infrastructure VPC, Subnets, IGW, EKS cluster in AWS automatically by CircleCI using AWS Cloudformation and the containerized app is deployed and running in eks kubernetes cluster.

---

## Setup the Environment

* CircleCI jobs creates AWS Infrastruture such as VPC, EC2, ECS, EKS
* CircleCI jobs containerizes, test app and push image to dockerhub 
* CircleCI jobs deploys app on aws kubernetes cluster

## Configuration and Deployment
* Using Circle CI to implement Continuous Integration and Continuous  Deployment
* Building pipelines
* Using Ansible and CloudFormation to deploy clusters
* Building Kubernetes clusters
* Building Docker containers in pipelines


### How to access the Application
* Deploy application in Kubernetes Cluster 
* Expose access to public 
* Open Browser to public ip
