data "aws_vpc" "selected" {
  id = "vpc-0b968e52e6def445d"

  filter {
    name   = "tag:Name"
    values = ["GeeksHubs-DevOps"]
  }
}

data "aws_subnet" "selected" {
  vpc_id = data.aws_vpc.selected.id
}

data "aws_security_group" "allow_traffic" {
  name   = "allow-http-inbound-traffic"
  vpc_id = data.aws_vpc.selected.id
}
