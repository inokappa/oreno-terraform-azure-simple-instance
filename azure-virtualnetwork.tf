#
# Create VirtualNet
#
resource "azure_virtual_network" "default" {
    name = "inokappa-tf-vnet"
    address_space = ["10.0.0.0/16"]
    location = "${var.location}"

    subnet {
        name = "subnet00"
        address_prefix = "10.0.1.0/24"
    }
    subnet {
        name = "subnet01"
        address_prefix = "10.0.2.0/24"
    }
    subnet {
        name = "subnet02"
        address_prefix = "10.0.3.0/24"
    }
}
