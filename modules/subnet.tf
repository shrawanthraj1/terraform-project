resource "aws_subnet" "subnet-a" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.subnet-cidr-a
  availability_zone = "${var.region}a"
}

resource "aws_subnet" "subnet-b" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.subnet-cidr-b
  availability_zone = "${var.region}b"
}

resource "aws_subnet" "subnet-c" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.subnet-cidr-c
  availability_zone = "${var.region}c"
<<<<<<< HEAD
}

resource "aws_subnet" "subnet-p" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.subnet-cidr-p
 # availability_zone = "${var.region}a"
=======
>>>>>>> a11a58a6effe34a5876c619806b37afe36e7209d
}