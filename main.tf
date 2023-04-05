data "aws_iam_policy_document" "bucket_policy" {
  statement {
    sid = "PublicReadGetObject"
    effect = "Allow"
    actions = [ "s3:GetObject" ]
    principals {
      type = "*"
      identifiers = [ "*" ]
    }
    resources = [ "arn:aws:s3:::samplenikolozwebsite.ge/*" ]
  }
}

resource "aws_s3_bucket" "testbucket" {
  bucket = "samplenikolozwebsite.ge"  
}

resource "aws_s3_bucket_policy" "allow_access_from_another_account" {
  bucket = aws_s3_bucket.testbucket.id
  policy = "${data.aws_iam_policy_document.bucket_policy.json}"
}

resource "aws_s3_bucket_acl" "example_bucket_acl" {
  bucket = aws_s3_bucket.testbucket.id
  acl    = "public-read"
}

resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.testbucket.id
  index_document {
    suffix = "index.htm"
  }
  error_document {
    key = "error.htm"
  }
}

output "website_bucket_url" {
  value = "${aws_s3_bucket_website_configuration.website.website_endpoint}"
}

