resource "aws_vpc" "vpc" {
	cidr_block = "${var.cidr}"
	enable_dns_hostnames = true
	enable_dns_support = true
	tags {
		Name = "VPC custom"
	}
}

resource "aws_subnet" "public1" {
	cidr_block = "${var.public1_cidr}"
	vpc_id = "${aws_vpc.vpc.id}"
	map_public_ip_on_launch = true
	availability_zone = "${data.aws_availability_zones.az.names[0]}"
	tags{
		Name = "public1"
	}
}

resource "aws_subnet" "public2" {
	cidr_block = "${var.public2_cidr}"
	vpc_id = "${aws_vpc.vpc.id}"
	map_public_ip_on_launch = true
	availability_zone = "${data.aws_availability_zones.az.names[1]}"
	tags{
		Name = "public2"
	}
}

resource "aws_subnet" "private1" {
	cidr_block = "${var.private1_cidr}"
	vpc_id = "${aws_vpc.vpc.id}"
	map_public_ip_on_launch = true
	availability_zone = "${data.aws_availability_zones.az.names[0]}"
	tags{
		Name = "private1"
	}
}

resource "aws_subnet" "private2" {
	cidr_block = "${var.private2_cidr}"
	vpc_id = "${aws_vpc.vpc.id}"
	map_public_ip_on_launch = true
	availability_zone = "${data.aws_availability_zones.az.names[1]}"
	tags{
		Name = "private2"
	}
}

resource "aws_internet_gateway" "igw" {
	vpc_id = "${aws_vpc.vpc.id}"
}

resource "aws_route" "default_route" {
	route_table_id = "${aws_vpc.vpc.default_route_table_id}"
	destination_cidr_block = "0.0.0.0/0"
	gateway_id = "${aws_internet_gateway.igw.id}"
}