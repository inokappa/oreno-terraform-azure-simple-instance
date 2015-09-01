#
# Create VM Machine
#
resource "azure_instance" "node" {
  name = "${var.instance-name}"
  hosted_service_name = "${azure_hosted_service.hosted-service.name}"
  image = "${var.image}"
  size = "${var.instance-size}"
  storage_service_name = "${azure_storage_service.storage-service.name}"
  location = "${var.location}"
  security_group = "${azure_security_group.node_sggroup.name}"
  virtual_network = "${azure_virtual_network.default.name}"
  subnet = "${var.vnet-subnet-name}"
  username = "${var.ssh-username}"
  password = "${var.ssh-password}"

  endpoint {
    name = "SSH"
    protocol = "tcp"
    public_port = 22
    private_port = 22
  }

  endpoint {
    name = "WEB"
    protocol = "tcp"
    public_port = 80
    private_port = 80
  }
}
