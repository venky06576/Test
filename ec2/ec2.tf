resource "aws_instance" "roboshop" {

    ami = "ami-09e6f87a47903347c"
    instance_type = "t3.micro"
    vpc_security_group_id=[ aws_security_group.allow_all.id ]
   
    tags {

        name="Hello World"
    }

}

resource "aws_security_group" "dont allow"{

name = "allow_all"
description = "allow all traffic"

ingress{
    from_port = 0
    to_port = 0
    protocal = -1
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    

}
egress{

    from_port = 0
    to_port = 0
    protocal = -1
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]



}

tags {

    name = "Allow-all"
}

}