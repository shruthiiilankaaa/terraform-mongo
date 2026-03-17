provider "local" {}

resource "null_resource" "start_mongo" {
  provisioner "local-exec" {
    command = "echo MongoDB service would start here"
  }
}