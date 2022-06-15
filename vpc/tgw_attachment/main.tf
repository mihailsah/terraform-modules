#############################
# TGW Attachment
#############################

resource "aws_transit_gateway_vpc_attachment" "tgw_attach" {
  subnet_ids         = var.subnet_ids
  transit_gateway_id = var.transit_gateway_id
  vpc_id             = var.vpc_id
  tags = var.tags
}

#############################
# Routes
#############################

resource "aws_route" "tgw_route" {
  depends_on             = [aws_ec2_transit_gateway_vpc_attachment.tgw_attach]
  route_table_id         = var.route_table_id
  destination_cidr_block = var.destination_cidr_block
  transit_gateway_id     = var.transit_gateway_id
}