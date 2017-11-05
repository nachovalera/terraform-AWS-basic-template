variable "rds_username" {
	type = "string"
	default = "root"
}

variable "rds_passwd" {
	type = "string"
	default = "bkfJoYnrnuQezixja6ERCZJ7VwAXNo" // <- Generate a pass
}

variable "ssh-key" {
	type = "string"
	default = "nacho" // <- Your ssh key
}

variable "instance_type" {
	type = "string"
	default = "t2.micro"
}

variable "region" {
	type = "string"
	default = "eu-west-1"
}

variable "aws_id" {
	type = "string"
	default = "yourAccountId"
}

variable "aws_amis" {
	type = "map"
	default = {
		"eu-west-1" = "ami-785db401"
		"us_east-1" = "ami-cd0f5cb6"
		"eu-central-1" = "ami-1e339e71"
	}
}

variable "project" {
	type = "string"
	default = "web"
}

variable "envirnoment" {
	type = "string"
	default = "pro"
}

variable "cidr" {
	type = "string"
	default = "10.0.0.0/16"
}

variable "public1_cidr" {
	type = "string"
	default = "10.0.0.0/24"
}

variable "public2_cidr" {
	type = "string"
	default = "10.0.1.0/24"
}

variable "private1_cidr" {
	type = "string"
	default = "10.0.10.0/24"
}

variable "private2_cidr" {
	type = "string"
	default = "10.0.11.0/24"
}
