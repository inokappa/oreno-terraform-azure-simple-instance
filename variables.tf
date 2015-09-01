#
# Image
#
variable "image" {
  default = "Ubuntu Server 14.04 LTS"
}

#
# Instance Size
#
variable "instance-size" {
  default = "Basic_A0"
}

#
# Location
#
variable "location" {
  default = "Japan West"
}

#
# Cloud Service Name
#
variable "hosted-service-name" {
  default = "your-service"
}

#
# Storage Service Name
#
variable "storage-service-name" {
  default = "yourtfstor"
}

#
# Virtual Network Name
#
variable "virtual-network-name" {
  default = "your-tf-vnet"
}

#
# Instnace Name
#
variable "instance-name" {
  default = "your-node"
}

#
# SSH Username
#
variable "ssh-username" {
  default = "change-to-your-name"
}

#
# SSH Password
#
variable "ssh-password" {
  default = "change-to-your-password"
}

#
# Virtual Netowrk Subnet
#
variable "vnet-subnet-name" {}

#
# Security Group Source IP Addresss
#
variable "sg-source-ip" {}

#
# Setting File Path
#
variable "setting-file-path" {}
