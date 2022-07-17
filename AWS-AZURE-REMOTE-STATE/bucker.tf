resource "aws_s3_bucket" "first_bucket" {
  bucket = "fabio-remote-state15072022"

  versioning {
    enabled = true
  }
}