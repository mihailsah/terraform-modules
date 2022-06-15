variable "transit_gateway_id" {
  description = "The ID of the transit gateway to connect the VPC to"
  default     = ""
}

variable "vpc_id" {
  description = "The ID of the vpc to attach transit gateway to"
  default     = ""
}

variable "subnet_ids" {
  description = "The ID of the subnets for rt association."
  default     = ""
}

variable "route_table_id" {
  description = "The ID of the route table for association."
  default     = ""
}

variable "destination_cidr_block" {
  description = "The cidr block of the tgw to route to"
  default     = ""
}