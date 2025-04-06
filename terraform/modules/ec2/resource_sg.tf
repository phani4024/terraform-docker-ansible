resource "aws_security_group" "docker" {
name=var.sg_name
description=var.sg_desc
ingress{
from_port=0
to_port=0
protocol=-1
cidr_blocks=["0.0.0.0/0"]
}
egress{
from_port=0
to_port=0
protocol=-1
cidr_blocks=["0.0.0.0/0"]
}
}

