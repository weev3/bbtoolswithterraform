output "outputs" {
  value = [
    "ip - ${digitalocean_droplet.recon-http.ipv4_address}"
  ]
}