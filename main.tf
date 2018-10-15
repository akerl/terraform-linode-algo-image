resource "random_id" "vm_suffix" {
  byte_length = 8
}

module "vm" {
  source = "github.com/akerl/terraform-linode-algo-base"

  name            = "algo-image_${random_id.vm_suffix.hex}"
  region          = "us-east"
  type            = "g6-standard-1"
  algo_repo       = "${var.algo_repo}"
  source_image_id = "linode/ubuntu18.04"
  ssh_keys        = ["${var.ssh_keys}"]
}

resource "linode_image" "image" {
  linode_id   = "${module.vm.linode_id}"
  disk_id     = "${module.vm.disk_id}"
  label       = "algo-image"
  description = "Created by Terraform"
}
