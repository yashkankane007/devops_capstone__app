# Devops Capstone Application

The application contains a simple print statement and it is built using python and deployed in Kubernetes cluster hosted by AWS EKS. The project uses a CLI tool called `EKSCTL` to create EKS cluster and EC2 nodes using **CloudFormations**. All the necessary cloudFormation stacks are created by this tool including the networking layer and it configures `kubectl` tool to connect with the remote cluster located in AWS. To read more about EKSCTL please check out [this Github Repo](https://github.com/weaveworks/eksctl).

The code was built and stored as a docker image in the *DockerHub* repository and deployed in the cluster using `kubectl` CLI tool. I have created a Kubernetes configuration file to spin-up deployment and service. The **CircleCI** is used a CI/CD tool to create the pipeline and every command is executed as a step within a job.

The Kubernetes service uses **LoadBalancer** to expose the application and the same can be accessed using the following link.

http://a55089767c1e74decb65f9856a09715b-552883120.us-west-2.elb.amazonaws.com:80


The repository contains all the files required to build this application including **Dockerfile, MakeFile, k8_config.yaml and requirements.txt**.

I hope you enjoyed my DevOps project!