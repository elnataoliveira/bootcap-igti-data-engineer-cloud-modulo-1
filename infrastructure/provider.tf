provider "aws" {
    region = "${var.base_bucket_name}"
}

#controle de estado 
terraform {
  backend "s3" {
    bucket = var.base_bucket_name
    key    = "state/terraform/terraform.tfstate"
    region = "${var.aws_s3_bucket}"
  }
}