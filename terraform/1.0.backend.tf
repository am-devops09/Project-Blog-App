terraform {
  backend "s3" {
    bucket = "tfstate-comblog-app-prod"
    key    = "terraform-state/terraform.tfstate"
    region = "us-east-1"
  }
}