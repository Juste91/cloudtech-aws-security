resource "aws_s3_bucket" "security" {
  bucket_prefix = "cloudtech-security-lab-"
  force_destroy = false

  tags = {
    Name = "CloudTech-Security-Bucket"
  }
}

resource "aws_s3_bucket_public_access_block" "security" {
  bucket = aws_s3_bucket.security.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "security" {
  bucket = aws_s3_bucket.security.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_versioning" "security" {
  bucket = aws_s3_bucket.security.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_ownership_controls" "security" {
  bucket = aws_s3_bucket.security.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}
