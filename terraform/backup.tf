terraform {
backend "s3" {
bucket="backend.terraform.test"
key="prod/terraform.tfstate"
region="us-east-1"
#dynamodb="terraform-lock"
}
}

