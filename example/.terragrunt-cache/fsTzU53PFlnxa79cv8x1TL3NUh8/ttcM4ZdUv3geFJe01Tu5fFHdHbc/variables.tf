#variable "vpc_ids" {}

variable "vpc_ids" {
  default     = []
  description = " "
  type        = list(string)
}

variable "log_destination" {
  default     = ""
  description = "ARN of logging destination"
  type        = string
}

variable "tags" {
  default     = {}
  description = "A map of tags to add to all resources"
  type        = map(string)
}
variable "enabled" {
  type        = string
  description = "Set to `false` to prevent the module from creating any resources"
  default     = "true"
}
