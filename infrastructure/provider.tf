provider "aws" {
    region = var.aws_region
}

#controle de estado 
terraform {
  backend "s3" {
    bucket = "mindsetcloud"
    key    = "state/terraform/terraform.tfstate"
    region = "us-east-2"
  }
}