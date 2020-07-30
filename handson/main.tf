provider "aws" {
 region = "ap-northeast-1"
}

resource "aws_vpc" "hello" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "handson"
  }
}

resource "aws_subnet" "public_1a" {
 vpc_id = "${aws_vpc.hello.id}"

 availability_zone = "ap-northeast-1a"

 cidr_block = "10.0.1.0/24"

 tags = {
  Name = "handson-public-1a"
 } 
}
