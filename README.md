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
