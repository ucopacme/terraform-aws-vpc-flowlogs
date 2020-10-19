resource "aws_flow_log" "logs" {
  count                = var.enabled ? length(var.vpc_ids) : 0
  log_destination      = var.log_destination
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = var.vpc_ids[count.index]
}
