# S3 bucket

resource "aws_s3_bucket" "examples3" {
  # NOTE: S3 bucket names must be unique across _all_ AWS accounts, so
  # this name must be changed before applying this example to avoid naming
  # conflicts.
  bucket = "vinnie-examples3-11223344"
  acl    = "private"
  
   server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "AES256"
      }
    }
  }
  tags {
    bucket = "webserver"
  }
}
