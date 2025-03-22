resource "null_resource" "test" {}

terraform {
  backend "s3" {
    bucket = "buky100012"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}
