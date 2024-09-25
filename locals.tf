locals {
  resource_name = "${var.project}-${var.environment}"
  availability_zones = "${slice(data.aws_availability_zones.available.names, 0, 2)}"
  
}