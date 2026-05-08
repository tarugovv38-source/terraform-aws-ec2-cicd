terraform {
  backend "s3" {
    bucket  = "terraform-state-tarugovv38"
    key     = "devops-lab/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
