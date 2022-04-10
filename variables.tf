# this is a sample variables file.

# tokens, api keys
variable "do_token" {
    default = "<your digitalocean token>" 
}

# ssh keys
variable "ssh_public_key" {
    default = "./config/id_rsa.pub" 
}

variable "pvt_key" {
    default = "./config/id_rsa"
}


