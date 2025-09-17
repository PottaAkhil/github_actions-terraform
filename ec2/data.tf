data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "devops-terraform-123"
    key    = "vpc/vpc.tfstate"
    region = "us-east-1"
  }
}
data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "devops-terraform-123"
    key    = "sg/ec2/sg.tfstate"
    region = "us-east-1"
  }
}