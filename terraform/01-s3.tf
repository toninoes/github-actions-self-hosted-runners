resource "aws_s3_bucket" "mi_bucket" {
  bucket = "test-runners-toni-alfonso-v1"

  tags = {
    Name        = "Mi bucket bueno de Cadi"
    Environment = "Dev"
  }
}
