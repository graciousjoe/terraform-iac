# Configure the s3 bucket
resource "aws_s3_bucket" "my-s3-bucket" {
  bucket = "practice-s3-bucket-today"
}

# enable versioning for the bucket 
resource "aws_s3_bucket_versioning" "versioning_my_s3_bucket" {
  bucket = aws_s3_bucket.my-s3-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

