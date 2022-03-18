terraform {
  required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.35.0"
    }
  }
}

provider "openstack" {
 allow_reauth = false
}

resource "openstack_compute_instance_v2" "vm_instance" {
  name = "vm_test"
  image_id  = local.img-423d0
  flavor_id = local.flv-12d63
}
