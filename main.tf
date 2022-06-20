module "my_vpc"{
    source= "./module/vpc/"
    cidr_vpc=var.cidr_vpc
    cidr_private=var.cidr_private
    zone_private=var.zone.private
    cidr_public=var.cidr_public
    zone_public=var.zone_public
} 