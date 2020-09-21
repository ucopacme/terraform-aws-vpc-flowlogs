provider "aws" {
  region = "us-west-2"
}

data "aws_vpcs" "vpcs" {
}

data "aws_vpc" "vpcs" {
  count = length(data.aws_vpcs.vpcs.ids)
  id    = tolist(data.aws_vpcs.vpcs.ids)[count.index]
}

resource "aws_flow_log" "logs" {
  count           = length(data.aws_vpcs.vpcs.ids)
  log_destination = var.logdest
  log_destination_type = "s3"
  traffic_type    = "ALL"
  vpc_id = data.aws_vpc.vpcs[count.index].id
}

