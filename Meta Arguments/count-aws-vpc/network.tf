resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    "Name" = "vpc-terraform"
  }
}

resource "aws_subnet" "subnet" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.${count.index}.0/24"

  count = 3

  tags = {
    "Name" = "subnet-terraform-${count.index}"
  }
}