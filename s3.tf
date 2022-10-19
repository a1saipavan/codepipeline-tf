
data "template_file" "s3_policy" {
  template = file("s3_policy.json")
  vars = {
    bucket_name = var.sample_web_bucket_name
  }
}

resource "aws_s3_bucket" "sample_web_bucket" {
  bucket = var.sample_web_bucket_name
  acl    = "public-read"
  policy = data.template_file.s3_policy.rendered

  website {
    error_document = "index.html"
    index_document = "index.html"
  }
}

resource "aws_s3_bucket" "artifacts_sample" {
  bucket        = var.artifacts_sample_name
  force_destroy = true
}
