# name should be "terraform.tf" in your ec2-instance-infra (rename to terraform.tf) 

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta3"
    }
  }
 backend "s3" {
    bucket = "vremote-backend-bucket"
    key = "terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "dynamo_db"    
  }
}

