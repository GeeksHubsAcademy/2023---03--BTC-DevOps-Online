data "aws_ami" "nginx" {
  owners = ["979382823631"]

  filter {
    name   = "name"
    values = ["bitnami-nginx-1.23.3-7*"]
  }
}

resource "aws_instance" "web_server" {
  count = var.instance_count

  ami                         = data.aws_ami.nginx.id
  instance_type               = var.instance_type
  subnet_id                   = data.aws_subnet.selected.id
  associate_public_ip_address = true
  vpc_security_group_ids      = [data.aws_security_group.allow_traffic.id]

  tags = {
    Name = "web_server"
  }
}
