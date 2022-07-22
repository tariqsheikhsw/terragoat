provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "docking_bay" {
  bucket_prefix = "docking-bay-storage-"

  tags = {
    Name                 = "Docking Bay"
    Environment          = "Dev"
    git_commit           = "7be016d56f3bfd536a816c4bb7f7cdff95fd3f9b"
    git_file             = "terraform/simple_instance/s3.tf"
    git_last_modified_at = "2022-07-21 16:09:55"
    git_last_modified_by = "54164634+tariqsheikhsw@users.noreply.github.com"
    git_modifiers        = "54164634+tariqsheikhsw"
    git_org              = "tariqsheikhsw"
    git_repo             = "terragoat"
    yor_trace            = "fdf05c2c-4d84-4654-b6c9-f124c46fbb65"
  }
}
