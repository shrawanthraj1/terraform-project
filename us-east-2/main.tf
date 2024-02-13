module "us-east-2" {
<<<<<<< HEAD
  source = "../modules/vpc" 

region="us-east-2"
=======
  source = "../modules/vpc"
  region="us-east-2"

>>>>>>> a11a58a6effe34a5876c619806b37afe36e7209d
vpc-cidr = "10.0.0.0/24"
subnet-cidr-a = "10.0.0.0/26"
subnet-cidr-b = "10.0.0.64/26"
subnet-cidr-c = "10.0.0.128/26"
<<<<<<< HEAD
ami = "ami-0c20d88b0021158c6"
=======
>>>>>>> a11a58a6effe34a5876c619806b37afe36e7209d
}