# data "digitalocean_ssh_key" "kali" {
#  name = "kali"
#}

# create recon droplet
resource "digitalocean_droplet" "recon-http" {
  image    = "ubuntu-20-04-x64"
  name     = "recon-http"
  region   = "sgp1"
  size     = "s-1vcpu-1gb"
  ssh_keys = ["${digitalocean_ssh_key.default.id}"]

provisioner "file" {
    source      = "./config/install.sh"
    destination = "/root/install.sh"
  }

connection {
    host = self.ipv4_address
    user = "root"
    type = "ssh"
    private_key = file(var.pvt_key)
    timeout = "2m"
  }

  provisioner "remote-exec" {
    inline = [
      "apt-get update",
      "apt-get update",
      "chmod +x install.sh",
      "./install.sh",
      "shutdown -r now"
    ]
  }
}

