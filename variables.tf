#variable "vpc_id" {}


variable "logdest" {
  default = ""
  description = "ARN of logging destination"
  type        = string
}
