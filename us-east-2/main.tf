module "us-east-2" {
  source = "../modules/vpc" 

region="us-east-2"
vpc-cidr = "10.0.0.0/24"
subnet-cidr-a = "10.0.0.0/26"
subnet-cidr-b = "10.0.0.64/26"
subnet-cidr-c = "10.0.0.128/26"
ami = "ami-0c20d88b0021158c6"
}