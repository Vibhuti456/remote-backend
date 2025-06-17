resource "aws_s3_bucket" "s3_bucket" {
    bucket = "vremote-backend-bucket"


    tags = {
        Name = "vremote-backend-bucket"
        Environment = "dev"
    }
}