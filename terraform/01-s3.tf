resource "aws_s3_bucket" "mi_bucket" {
  bucket = "mi-bucket-prueba-toninoes-v7"

  tags = {
    Name        = "Mi bucket bueno de Cadi"
    Environment = "Dev"
  }
}
