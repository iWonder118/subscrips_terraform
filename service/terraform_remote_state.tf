data "terraform_remote_state" "aws_iam" { 
  backend = "s3"
  config = {
    bucket = "subscrips-terraform"
    key    = "subscrips_terraform/iam/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
data "terraform_remote_state" "vpc" { 
  backend = "s3"
  config = {
    bucket = "subscrips-terraform"
    key    = "subscrips_terraform/vpc/terraform.tfstate"
    region = "ap-northeast-1"
  }
}