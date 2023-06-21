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
######  Created VPC & Subnet
###### Created custom Route Table
###### Added Subnet Association with Route Table
###### Configured Default/Main Route Table
###### Created Security Group
######  Configured Default Security Group❏Created EC2 Instance (Fetch AMI, Create ssh key-pair and download .pem file and restrict permission)
###### SSH into EC2 instance
          ssh -i ~/.ssh/<file-name> ec2-user@<public-ip>
###### Configured ssh key pair in Terraform config file
###### Created EC2 Instance-Fetch AMI-Create ssh key-pair and download .pem file
###### Restrict permission 
           chmod 400 <file name>
###### SSH into EC2 instance
###### Automated ssh key-pair and configured ssh key pair in Terraform config file
###### Configured Terraform to install Docker and run nginx image
###### Extract shell commands to own shell script
###### Accessed nginx through BrowserTerraform
              <IP-Address>:8080

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
