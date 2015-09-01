#
# Output
#
output "azure_storage_service_id" {
  value = "${azure_storage_service.storage-service.id}"
}

output "azure_instance_pip_address" {
  value = "${azure_instance.node.ip_address}"
}

output "azure_instance_vip_address" {
  value = "${azure_instance.node.vip_address}"
}

# output "azure_data_disk_media_link" {
#  value = "${azure_data_disk.data.media_link}"
# }
