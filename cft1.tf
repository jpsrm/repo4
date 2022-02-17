
provider "aws" {
region = "ap-south-1"
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
resource "aws_cloudformation_stack" "projectnew" {
  name = "projectnew-stack"
  capabilities     = ["CAPABILITY_NAMED_IAM"]
  template_url = "https://s3-projectnew1.s3.ap-south-1.amazonaws.com/project3.json"
}
