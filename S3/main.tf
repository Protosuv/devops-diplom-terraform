# Configure the AWS Provider
provider "aws" {
  region                  = var.aws-region
  shared_credentials_file = "$HOME/.aws/credentials"
  profile                 = "default"
  //# access_key = var.AWS_ACCESS_KEY_ID
  //# secret_key = var.AWS_SECRET_ACCESS_KEY
}


resource "aws_s3_bucket" "netology-diplom-bucket" {
  bucket = "netology-diplom-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "prod"
  }
}

resource "aws_dynamodb_table" "dynamodb-terraform-lock" {
   name = "terraform-lock"
   hash_key = "LockID"
   read_capacity = 20
   write_capacity = 20

   attribute {
      name = "LockID"
      type = "S"
   }

   tags = {
     Name = "Terraform Lock Table"
   }
}
