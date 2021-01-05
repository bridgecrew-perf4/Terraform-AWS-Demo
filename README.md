# Terraform "AWS EXAMPLE NGINX SERVER"

This folder contains a simple Terraform module that deploys resources in AWS for a web server


# Running this module manually
1. Sign up/in for [AWS](https://aws.amazon.com/free/).
2. Configure your AWS credentials using one of the supported methods [AWS CLI tools](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html)
3. Install [Terraform](https://www.terraform.io/)
4. Create a directory for the new configuration
    ```
    mkdir terraform-aws-instance-nginx
    cd terraform-aws-instance-nginx
    git clone https://github.com/divergent-rose/AWS_Terraform_Demo.git
    cd AWS_Terraform_Demo
    ```
5. Run terraform init.
6. Run terraform fmt.
7. Run terraform apply.
8. Once the instance is running, go to your AWS console and look up the connection information for the instances IP address. 
9. Open a browser and navigate to the site. 
10. When you're done, run terraform destroy.
