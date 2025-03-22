resource "null_resource" "test" {}

terraform {
  backend "s3" {
    bucket = "buky10001"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}
