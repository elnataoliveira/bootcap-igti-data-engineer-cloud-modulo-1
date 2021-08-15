provider "aws" {
    region = "${var.aws_region}"
}

#controle de estado 
terraform {
  backend "s3" {
    bucket = "${var.base_bucket_name}"
    key    = "state/terraform/terraform.tfstate"
    region = "${var.aws_s3_bucket}"
  }
}