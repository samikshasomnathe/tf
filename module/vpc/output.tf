output "private_subnet_id"{
    value= aws_subnet.private_subnet.id
}
output "Public_subnet_id"{
    value= aws_subnet.public_subnet.id
}
output "sg_id"{
    value=aws_vpc.vpc1.default_security_group_id
}