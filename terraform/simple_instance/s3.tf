provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "docking_bay" {
  bucket_prefix = "docking-bay-storage-"

  tags = {
    Name        = "Docking Bay"
    Environment = "Dev"
    yor_trace   = "6d201887-fae1-4e81-97b7-29841737633b"
  }
}
