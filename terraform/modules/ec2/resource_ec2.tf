resource "aws_instance" "docker" {
ami=var.ami_id
instance_type=var.itype
key_name=var.kname
security_groups=[aws_security_group.docker.name]
tags={
Name=var.iname
}
}

