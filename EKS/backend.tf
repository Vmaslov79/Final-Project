terraform {
  backend "s3" {
    bucket         = "vlad-tf-final-step"
    key            = "vlad-tf-final-step/terraform.tfstate"
    encrypt        = true
    #dynamodb_table = "lock-tf-vlad-eks"
    region = eu-central-1
  }
}

#dynamodb_table" I doubt for it



