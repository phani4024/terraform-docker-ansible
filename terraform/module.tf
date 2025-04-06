module "my_instance_module" {
source="./modules/ec2/"
iname=var.iname
ami_id=var.ami_id
itype=var.itype
kname=var.kname
sg_name=var.sg_name
sg_desc=var.sg_desc
}

