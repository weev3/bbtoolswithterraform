resource "digitalocean_ssh_key" "default" {
  name       = "kali"
  public_key = file(var.ssh_public_key)
}