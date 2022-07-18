# main.tf | Main Configuration

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket  = "ecs-task-vaibhav"
    key     = "state/terraform_state.tfstate"
    region  = "ap-south-1"
    profile = "default"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = "default"
}
