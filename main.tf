terraform {
  required_providers {
    libvirt = {
      source = "dmacvicar/libvirt"
    }
  }
}

provider "libvirt" {
  uri = "qemu:///system"
}

# We have a standard place to stash all our VMs' disks
resource "libvirt_pool" "cluster" {
  name = "cluster"
  type = "dir"
  path = "/var/lib/libvirt/images/tfcluster"
}

# We have a baseline image to work from
resource "libvirt_volume" "fedora" {
  name   = "fedora-36-base-image"
  pool   = libvirt_pool.cluster.name
  source = "/var/lib/libvirt/images/Fedora-Cloud-Base-36-1.5.x86_64.qcow2"
}

# We pull in this template file to use later
data "template_file" "user_data" {
  template = templatefile("${path.module}/cloud-config.yaml.tpl", { domain = "terraform-test" })
}

# We build this iso for cloud-init purposes
resource "libvirt_cloudinit_disk" "commoninit" {
  name      = "commoninit.iso"
  pool      = libvirt_pool.cluster.name
  user_data = data.template_file.user_data.rendered
}

# disk copied from the base image above to use specifically for this domain:
resource "libvirt_volume" "ttdisk" {
  name           = "ttdisk"
  pool           = libvirt_pool.cluster.name
  base_volume_id = libvirt_volume.fedora.id
}

resource "libvirt_domain" "terraform_test" {
  name      = "terraform-test"
  cloudinit = libvirt_cloudinit_disk.commoninit.id

  disk {
    volume_id = libvirt_volume.ttdisk.id
  }

  console {
    type        = "pty"
    target_port = "0"
    target_type = "serial"
  }

  console {
    type        = "pty"
    target_type = "virtio"
    target_port = "1"
  }
}

