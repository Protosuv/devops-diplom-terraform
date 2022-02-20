variable "aws-region" {
  default = "us-east-2"
  description = "Default Amazon region"
}
variable "aws-av-zone" {
  default = "us-east-2a"
  description = "Avaliability zone"
}

locals {
web_instance_type_map = {
  default = "t2.micro"
  stage = "t3.micro"
  }
web_instance_count_map = {
  default = 1
  stage = 3
  }
instances = {
  "t2.micro" = data.aws_ami.ubuntu.id
  "t3.micro" = data.aws_ami.ubuntu.id
  }
}
