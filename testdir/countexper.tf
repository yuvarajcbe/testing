provider "aws" {
  region     = "us-east-1"
}

variable "istest" {}

resource "aws_instance" "dev" {
  ami           =  "ami-098f16afa9edf40be"
  instance_type = "t2.micro"
  count         =  var.istest == true ? 3 : 0
}

resource "aws_instance" "prod" {
  ami           =  "ami-098f16afa9edf40be"
  instance_type = "t2.micro"
  count         =  var.istest == false ? 1 : 0
}
