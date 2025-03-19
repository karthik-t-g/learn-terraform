resource "null_resource" "test" {}

terraform {
  backend "s3" {
    bucket = "my_bucket"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}

