resource "aws_security_group" "sg-1" {
name = "MY-SG"
description = "allow all traffic"

dynamic ingress {
for_each = var.port
content{
from_port = ingress.value
to_port = ingress.value
protocol = "tcp"
cidr_blocks = [ "0.0.0.0/0" ]
}
}
egress {
from_port = 0
to_port = 0
protocol = "-1"
cidr_blocks = ["0.0.0.0/0"]
}
}




variable "port" {
type = list(any)
default = [ 22, 443, 80, 8080, 8081 ] 
}

