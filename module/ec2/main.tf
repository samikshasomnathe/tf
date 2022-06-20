resource "aws_instance" "instance1"{
    ami=var.ami
    instance_type=var.instance_type
    key_name=var.key
    vpc_security_group_ids=var.sg_id
    tags = {
        Name="instance1"
    }
    subnet_id = var.private_subnet_id
}

resource "aws_instance" "instance2"{
    ami=var.ami
    instance_type=var.instance_type
    vpc_security_group_ids= var.sg_id
    tags = {
        name = "instance2"
    }
    subnet_id=var.public_subnet_id
}