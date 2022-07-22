data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ebs_optimized = true
  monitoring    = true
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name                 = "HelloWorld"
    git_commit           = "7beb616497a2a800874bf37ce3df5f1351372ca9"
    git_file             = "terraform/simple_instance/ec2.tf"
    git_last_modified_at = "2022-07-21 16:43:44"
    git_last_modified_by = "54164634+tariqsheikhsw@users.noreply.github.com"
    git_modifiers        = "54164634+tariqsheikhsw"
    git_org              = "tariqsheikhsw"
    git_repo             = "terragoat"
    yor_trace            = "98e543b1-8d1b-4cc0-9409-47c62c50bb02"
  }
}
