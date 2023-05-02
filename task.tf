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
resource "aws_iam_user" "shree"{
    name = "shree"
	}
resource "aws_cloudformation_stack" "project" {
  name = "project-stack"
  capabilities     = ["CAPABILITY_NAMED_IAM"]
   template_body = <<STACK
   {
        "Resources": {
                "Policy": {
                        "Type": "AWS::IAM::ManagedPolicy",
                        "Properties": {
                                "ManagedPolicyName": "S3policynew2",
                                "PolicyDocument": {
                                        "Version": "2012-10-17",
                                        "Statement": [{
                                                "Effect": "Allow",
                                                "Action": [
                                                        "s3:Get*",
                                                        "s3:List*"
                                                ],
                                                "Resource": "*"
                                        }]
                                },
								"Users": ["shree"]
                        }
                }
        }
}
STACK
}
