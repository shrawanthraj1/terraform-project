module "eu-west-2" {
<<<<<<< HEAD
  source = "../modules"
=======
  source = "../modules/vpc"
>>>>>>> a11a58a6effe34a5876c619806b37afe36e7209d
  
region="eu-west-2"
vpc-cidr = "10.0.0.0/16"
subnet-cidr-a = "10.0.1.0/24"
subnet-cidr-b = "10.0.2.0/24"
subnet-cidr-c = "10.0.3.0/24"
<<<<<<< HEAD
subnet-cidr-p = "10.0.4.0/24"
ami = "ami-027d95b1c717e8c5d"
=======
>>>>>>> a11a58a6effe34a5876c619806b37afe36e7209d

# VPC CIDR Block: 10.0.0.0/16
#  - Subnet 1: 10.0.1.0/24
#  - Subnet 2: 10.0.2.0/24
#  - Subnet 3: 10.0.3.0/24
}