#
# Create Hosted Service
#
resource "azure_hosted_service" "hosted-service" {
    name = "${var.hosted-service-name}"
    location = "${var.location}"
    ephemeral_contents = false
    description = "Hosted service created by Terraform."
    label = "tf-hs-01"
}
