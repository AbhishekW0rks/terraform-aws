terraform {
  backend "s3" {
    bucket         = "terraform-statefile-development"
    key            = "ec2/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
  }
}
