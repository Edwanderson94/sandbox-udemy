# -------------------------------------------------------------------------------------------------------------------------------------------------------------
# Udemy - Terraform do basico ao avançado
# =================================================================================
# Seção 8 - Meta-Arguments - Count
# =================================================================================
# Pré-Requisitos:
#   > 
# Resumo: 
#   >  Criação de VPC, Subnet, Route Table, Internet Gateway, Security Group 
# 
# -------------------------------------------------------------------------------------------------------------------------------------------------------------

terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "~> 4.0" --> teste realizado e funcionou!
      version = "4.12.1"
    }
  }

  backend "s3" {
    bucket = "edwanderson-remote-state-aws-az"
    key    = "aws-vpc-count/terraform.tfstate"
    region = "sa-east-1"
  }
}

provider "aws" {
  region = "sa-east-1"
  default_tags {
    tags = {
      owner      = "edevops"
      managed-by = "terraform"
    }
  }
}