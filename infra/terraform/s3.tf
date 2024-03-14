data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "infra_bucket" {
  bucket = "aft-infra-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
