#
# Security Group
#
resource "azure_security_group" "node_sggroup" {
    name = "node-sggroup"
    location = "${var.location}"
}

#
# Security Group Rule
#
resource "azure_security_group_rule" "ssh_access" {
    name = "ssh-access"
    security_group_names = ["${azure_security_group.node_sggroup.name}"]
    type = "Inbound"
    action = "Allow"
    priority = 100
    source_address_prefix = "${var.sg-source-ip}"
    source_port_range = "*"
    destination_address_prefix = "${azure_virtual_network.default.address_space.0}"
    destination_port_range = "22"
    protocol = "TCP"
}
