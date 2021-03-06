resource "osc_nat_gateway" "euw2-core-1-natgw-1" {
  allocation_id = "${osc_eip.euw2-core-1-eip-1.id}"
  subnet_id     = "${osc_subnet.euw2-core-1-subnet-1.id}"
  depends_on    = ["osc_route_table_association.euw2-core-1-route-1"]
}

resource "osc_nat_gateway" "euw2-core-2-natgw-1" {
  allocation_id = "${osc_eip.euw2-core-2-eip-1.id}"
  subnet_id     = "${osc_subnet.euw2-core-2-subnet-1.id}"
  depends_on    = ["osc_route_table_association.euw2-core-2-route-1"]
}
