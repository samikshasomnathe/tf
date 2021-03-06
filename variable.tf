variable "cidr_vpc"{
    default = "10.0.0.0/16"
}
variable "cidr_private" {
  default ="10.0.0.0/20"
}
variable "zone_private" {
    default="ap-south-1a"
  
}
variable "cidr_public" {
    default="10.0.16.0/20"
  
}
variable "zone_public" {
    default="ap-south-1b"
  
}
variable "ami"{
    default="ami-05c8ca4485f8b138a" 
}
variable "instance_type"{
    default="t2.micro"
}
variable "key_name"{
    default= "kmkey"
}