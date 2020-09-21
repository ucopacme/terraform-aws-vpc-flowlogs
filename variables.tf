#variable "vpc_id" {}


variable "logdest" {
  default = "arn:aws:s3:::chs-vpc-flow/UCOPlogs/"
  description = "List of VPCs"
  type        = string
}
