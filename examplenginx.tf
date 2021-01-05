provider "aws" {
  profile = "default"
  region  = var.region
}

# ---------------------------------------------------------------------------------------------------------------------
# DEPLOY THE EC2 INSTANCE WITH A PRIVATE IP
# ---------------------------------------------------------------------------------------------------------------------

resource "aws_instance" "ubuntu" {
  ami           = "ami-0dd9f0e7df0f0a138"
  instance_type = "t2.micro"
  key_name      = "NGINX_key"
  user_data     = file("init.sh")
  vpc_security_group_ids = [
    "sg-5465e324",
  ]
  tags = {
    Name = "NGINX"
  }

}

