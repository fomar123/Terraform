#  Project -  Resources and Data:
###### Created new VPC
###### Created Subnet in that new VPC
###### Created new Subnet in existing default VPC (with data
######  Execute VPC and Subnet:
          terraform apply


# Project -  Enviromental Varible:
######  Set variable using TF_VAR_name environment variable:
           In command line set evir_var:
                export  TF_VAR_avail_zone="us-east-2b"
           Apply changes: 
               terraform apply -var-file enviromental-variable.tfvars

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
###### Used “remote-exec” provisioner
###### Used “file” provisioner
###### Used “local-exec” provisioner


# Project - Modules 
###### Extracted output values, variables and providers into its own file
###### Created subnet module and used it in root config file
###### Created webserver module and used it in root config file
###### Executed terraform apply successfully

# Project - Automate EKS Cluster with Terraform
###### Created the VPC by using the VPC module
###### Created the EKS cluster and worker nodes by using the EKS module
###### Configured Kubernetes provider to authenticate with K8s cluster
###### Applied configurations
###### Deployed nginx Application/Pod
            Kubectl apply -f nginx-config.yaml
###### Terraform destroy - to delete all your components


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
