
variable "region" {
  default     = "eu-west-2"
  description = "The region to deploy the cluster in, e.g: us-east-1."
}


variable "environment" {
  default     = "dev"
  description = "environment name"
}


terraform {
  required_version = ">= 0.10.5"
  backend "s3" {
    bucket = "nifi-terraform-eu-west-2"
    key    = "dev/terraform.tfstate"
    region = "eu-west-2"
    encrypt = true

  }
}

data "terraform_remote_state" "default" {
  backend = "s3"
  config {
    bucket = "nifi-terraform-eu-west-2"
    key    = "dev/terraform.tfstate"
    region = "eu-west-2"
    encrypt = true
  }
}


# Define your AWS profile here
provider "aws" {
  region  = "eu-west-2"
  version = "~> 1.3.0"
}
