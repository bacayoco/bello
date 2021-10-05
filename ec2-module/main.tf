# child module...

terraform {
  backend "s3" {
    bucket = "bacalambdafile"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}

data "aws_ami" goldernAMI {
  most_recent = true
  owners = ["137112412989"]

  filter {
    name = "name"
    values = var.aim_id
  }
}
resource "aws_instance" "web" {
  ami           = data.aws_ami.goldernAMI.id
  instance_type = var.instance_type
  tags = {
    Name = var.tag
  }
}
