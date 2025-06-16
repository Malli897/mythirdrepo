resource "aws_instance" "server" {
tags = {
Name = var.iname
}
ami = var.ami_id
instance_type = var.itype
key_name = var.ikey
availability_zone = "us-west-1c"
root_block_device {
volume_size = var.size
}
count = var.icount
}

