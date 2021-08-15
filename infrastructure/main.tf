/*
resource "aws_s3_bucket" "datalake" {
  #parâmetros de configuração
  bucket = "${var.base_bucket_name}"
  acl    = "private"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    IES   = "IGTI",
    CURSO = "EDC"
  }

}
*/

resource "aws_s3_bucket_object" "codigo_spark" {

  bucket = var.base_bucket_name.id
  key    = "emr-code/pyspark/transform_from_tf.py"
  acl    = "private"
  source = "../etl/transform.py"
  etag   = filemd5("../etl/transform.py")
}

