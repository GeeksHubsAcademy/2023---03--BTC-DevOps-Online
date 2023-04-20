data "aws_ami" "ubuntu" {
  owners      = ["self"]
  most_recent = true

  filter {
    name   = "name"
    values = ["web-server-*"]
  }
}

resource "aws_instance" "web_server" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t3.micro"
  subnet_id                   = data.aws_subnet.selected.id
  associate_public_ip_address = true
  vpc_security_group_ids      = [data.aws_security_group.allow_traffic.id]
  user_data                   = file("../52_ansible/cloud-admin/ssh-user.yml")

  tags = {
    Name = "web_server"
  }
}
