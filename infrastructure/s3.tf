resource "aws_s3_bucket" "multi-region-bucket" {
  bucket = var.multi-region-bucket-name
}

# Enable versioning on the S3 bucket (separate resource - required in newer AWS provider)
resource "aws_s3_bucket_versioning" "multi-region-bucket" {
  bucket = aws_s3_bucket.multi-region-bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

# Enable server-side encryption (separate resource - required in newer AWS provider)
resource "aws_s3_bucket_server_side_encryption_configuration" "multi-region-bucket" {
  bucket = aws_s3_bucket.multi-region-bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}