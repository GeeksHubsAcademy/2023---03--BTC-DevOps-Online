resource "digitalocean_droplet" "casiopea" {
  image              = "ubuntu-18-04-x64"
  name               = "casiopea"
  region             = "fra1"
  size               = "s-1vcpu-2gb"
  private_networking = true
  ssh_keys = [
    data.digitalocean_ssh_key.XAVI.id
  ]
  connection {
    host        = self.ipv4_address
    user        = "root"
    type        = "ssh"
    private_key = file(var.pvt_key)
    timeout     = "2m"
  }
  provisioner "remote-exec" {
    inline = [
      "export PATH=$PATH:/usr/bin",
      "sudo apt-get update",
      "sudo apt-get -y install nginx"    ]
  }
}