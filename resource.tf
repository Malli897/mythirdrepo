resource "aws_instance" "server-1" {
tags = {
Name = "nv_server_1"
}
ami = "ami-020cba7c55df1f615"
instance_type = "t2.micro"
key_name = "KOPS"
availability_zone = "us-east-1b"
count = 1
}


resource "aws_instance" "server-2" {
tags = {
Name = "nv_server_1"
}
provider = aws.mumbai
ami = "ami-00b7ea845217da02c"
instance_type = "t2.micro"
key_name = "Keypair"
availability_zone = "ap-south-1a"
count = 1
}
