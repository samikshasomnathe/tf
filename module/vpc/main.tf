resource "aws_vpc" vpc1{
    cidr_block = var.cidr_block
    tags = {
        Name = "myvpc"
    }

}
resource "aws_subnet" "private_subnet"{
    vpc_id = aws_vpc.vpc1.id
    cidr_block = var.cidr_private
    availability_zone = var.zone_private
    tag{
        Name = "Private_subnet"
    }
}
resource "aws_subnet" "public_subnet" {
    vpc_id=aws_vpc.vpc1.id
    cidr_block = var.cidr_public
    availability_zone =var.zone_public
    map_public_ip_on_launch = true
    tag{
        Name= "Public_subnet"
    }
  
}
resource "aws_internet_getway" "igw" {
    vpc_id =aws_vpc.vpc1.id
}
resource "aws_default_route_table" "igw"{
    default_route_table_id = aws_vpc.vpc1.default_route_table_id
    route{
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_vpc.igw.id

    }
}

