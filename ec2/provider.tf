terraform {
  required_version = "~>1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket  = "devops-terraform-123"
    key     = "ec2/ec2.tfstate"
    region  = "us-east-1"
    profile = "terraform"
  }
}
provider "aws" {
  region  = "us-east-1"
  profile = "terraform" # Specify the desired AWS profile name here
}