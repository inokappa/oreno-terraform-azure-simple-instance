#
# Add Storage Service
#
resource "azure_storage_service" "storage-service" {
    name = "${var.storage-service-name}"
    location = "${var.location}"
    description = "Made by Terraform."
    account_type = "Standard_LRS"
}
