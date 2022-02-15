
provider "aws" {
region = "ap-southeast-1"
alias =  "Singapore"
}
variable "region" {
  type = string
}
variable "acc_no" {
  type = string
}

variable "access_key" {
  type = string
}

variable "secret_access_key" {
  type = string
}
resource "aws_cloudformation_stack" "project" {
  name = "project-stack"
  capabilities     = ["CAPABILITY_NAMED_IAM"]
  template_url = "https://s3-projectnew1.s3.ap-south-1.amazonaws.com/project3.json"
}
