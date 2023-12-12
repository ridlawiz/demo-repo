
/*
[default]
aws_access_key_id = AKIA6EPEBOQVP6QBDGW4
aws_secret_access_key = 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
*/

/*
[default]
aws_access_key_id = AKIA6EPEBOQVP6QBDGW4
aws_secret_access_key = Oo7+FZ1ku1zu9s2/jGAyLUcrRyg2MPK/zD5r+9Us
*/

provider "aws" {
  region = "us-east-2" # Set your desired AWS region
  access_key = "AKIA6EPEBOQVP6QBDGW4"
  secret_key = "Oo7+FZ1ku1zu9s2/jGAyLUcrRyg2MPK/zD5r+9Us"
}

resource "aws_s3_bucket" "example" {
  bucket = "ridwan-repro-bucket"

  tags = {
    Name = "netsuite-splunk"
  }
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.example.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false

  
}