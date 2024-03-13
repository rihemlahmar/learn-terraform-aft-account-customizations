data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "infraProd_bucket" {
  bucket = "aft-infraProd-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
