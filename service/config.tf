terraform {
  backend "s3"{
    bucket = "subscrips-terraform"
    key    = "subscrips_terraform/service/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
provider "aws" {
  region = "ap-northeast-1"
}
