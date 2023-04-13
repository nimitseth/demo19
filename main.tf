resource "aws_s3_bucket" "bucket1" {
	bucket = "nimitseth776162833937"
}

resource "aws_s3_bucket_acl" "example_bucket_acl" {
bucket = aws_s3_bucket.bucket1.id
acl = "public"
}

provider "aws" {
    access_key=var.accesskey
    secret_key=var.secretkey
  region = "eu-west-1"
}

variable "accesskey"{
    default="AKIAZTIMJ7JHLOS2F3VA"

}

variable "secretkey"{

    default="BTU4W8DdXr3NyHLbRx9CxuilXybKdr1Km6DK5fLP"
}
