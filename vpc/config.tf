terraform {
  backend "s3"{
    bucket = "subscrips-terraform"
    key    = "subscrips_terraform/vpc/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
provider "aws" {
  region = "ap-northeast-1"
}
