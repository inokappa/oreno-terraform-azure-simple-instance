provider "azure" {
  settings_file = "${file("${var.setting-file-path}")}"
}
