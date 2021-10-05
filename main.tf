//# root module..
//
//terraform {
//  backend "s3" {
//    bucket = "bacalambdafile"
//    key    = "path/to/my/key"
//    region = "us-east-1"
//  }
//}
//
//data "aws_ami" goldernAMI {
//  most_recent = true
//  owners = ["137112412989"]
//
//  filter {
//    name = "name"
//    values = ["amzn2-ami-hvm-2.0.20210813.1-x86_64-gp2"]
//  }
//}
//resource "aws_instance" "web" {
//  ami           = data.aws_ami.goldernAMI.id
//  instance_type = "t3.micro"
//  tags = {
//    Name = lookup(var.tag, terraform.workspace)
//  }
//}

module ec2-rootmodule {
  source = "./ec2-module"
  aim_id = ["amzn2-ami-hvm-2.0.20210813.1-x86_64-gp2"]
  instance_type = "t3.micro"
  tag = lookup(var.tag, terraform.workspace)
}

