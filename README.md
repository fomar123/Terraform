#  Project -  Resources and Data:
###### Created new VPC
###### Created Subnet in that new VPC
###### Created new Subnet in existing default VPC (with data
######  Execute VPC and Subnet:
          terraform apply


# Enviromental Varible:
##### Used environmental variables to manage configuration settings effectively in a Terraform project:

##### Environmental Variable Configuration:
- An environmental variable named TF_VAR_avail_zone is set to define an availability zone for resources.
- The variable is configured in the command line using the export command:

             export TF_VAR_avail_zone="us-east-2b"
  
##### Applying Changes:
- The configured environmental variable is used during the execution of Terraform.
- Changes are applied to the infrastructure using the terraform apply command.
- Additionally, a variable file named environmental-variable.tfvars can be used to load variables.

# Project - Automate AWS Infrastructure 
##### The project aimed to automate the setup of AWS infrastructure using Terraform, encompassing various tasks and configurations:

Infrastructure Setup:
- A Virtual Private Cloud (VPC) and a subnet were established to provide isolated network space.
- A custom route table was created to control network traffic routing.
- The subnet was associated with the custom route table.
- The default/main route table was configured to manage network traffic.

##### Security Configurations:
- A security group was generated to control inbound and outbound traffic.
- The default security group settings were configured to ensure proper access control.
  
##### EC2 Instance Provisioning:

- An EC2 intance was created using an Amazon Machine Image (AMI).
- An SSH key pair was generated, and the private key (.pem file) was downloaded. Permissions on the key file were restricted.
- SSH access to the EC2 instance was established using the private key.

##### Terraform and Automation:
- The SSH key pair was incorporated into the Terraform configuration file.
- Another EC2 instance was created with similar steps as before, automating the process.
- Docker installation and execution of an nginx image were automated using Terraform.
  
##### Shell Scripting and Access:
- Shell commands were extracted into a separate shell script for better management.
- The nginx web server could be accessed through a browser using the specified IP address and port 8080.

# Project - Provisioners 
##### In this project, various provisioners, including "remote-exec," "file," and "local-exec," were employed to execute specific actions during the Terraform deployment process:

##### "remote-exec" Provisioner:
- The "remote-exec" provisioner was used to execute commands on a remote resource after it was created.
- This provisioner enables running scripts or commands on a newly provisioned instance.

##### "file" Provisioner:
- The "file" provisioner was utilized to copy files from the local machine to a remote resource.
- This provisioner helps in transferring necessary configuration files or scripts to the remote instance.

##### "local-exec" Provisioner:
- The "local-exec" provisioner was employed to execute commands on the local machine where Terraform is running.
- This provisioner is useful for performing actions that involve the local environment, such as setting up prerequisites before deploying resources.
  
##### In summary, this project demonstrates the practical use of different provisioners in Terraform:
- "remote-exec" to execute commands on remote instances.
- "file" to copy files to remote resources.
- "local-exec" to execute commands on the local machine.
These provisioners enhance the deployment process by enabling automated configurations, file transfers, and local setup tasks during Terraform's execution.

# Project - Modules 
#####€ This project focuses on modularizing Terraform configurations to enhance organization and reusability. Key steps include:

##### Modular Structure:
- Segregated output values, variables, and provider configurations into separate files for clarity and maintainability.

##### Subnet Module:
- Created a dedicated module for subnets, encapsulating subnet-related configurations.
- Integrated the subnet module within the root configuration file.

##### Webserver Module:
- Developed a module tailored for web servers, encompassing web server-specific settings.
- Incorporated the webserver module within the root configuration file.

##### Successful Deployment:
- Successfully executed terraform apply, deploying the infrastructure as defined by the modular configurations.
  

# Project - Automate EKS Cluster with Terraform
##### This project revolves around automating the creation and management of an Amazon Elastic Kubernetes Service (EKS) cluster using Terraform. The project's key actions include:

##### vModular VPC Creation:
- Utilised a pre-existing VPC module to establish a Virtual Private Cloud (VPC) for the EKS cluster's network infrastructure.
  
##### EKS Cluster and Worker Nodes:
- Employed an EKS module to define and deploy the EKS cluster and its associated worker nodes.
  
##### bKubernetes Provider Configuration:
-Configured the Kubernetes provider to authenticate with the created Kubernetes cluster.

##### Configuration Application:
- Applied the Terraform configurations, resulting in the creation of the EKS cluster and worker nodes.
  
##### Deployed nginx Application:
- Utilised kubectl to deploy an nginx application/pod to the EKS cluster.
- Applied the configuration using "kubectl apply -f nginx-config.yaml".
  
##### Cleanup and Resource Deletion:
Executed "terraform destroy" to remove all components created by Terraform, effectively cleaning up the infrastructure.

# Project - CI/CD with Terraform 
###### Created SSH key pair for EC2 Instance
###### Created Credential in Jenkins
###### Installed Terraform inside Jenkins Container
         Go to root user: docker exec -it -u  0 <container id> bash!
         Add HashiCorp key: curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add 
         Install apt-add-repo command: apt-get install software-properties-common
         Add the official HashiCorp Linux repository:  apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com$(lsb_release -cs) main"
         Update and install:  apt-get update && apt-get install terraform
###### Created Terraform configuration files to provision an ec2 server
###### Created entry-script.sh file to install docker, docker-compose and start containers through docker-compose command
###### Adjusted Jenkinsfile to include provision and deployment stage
###### Included docker login to be able to pull Docker Images from private Docker repository
###### Executed CI/CD pipeline successfully
