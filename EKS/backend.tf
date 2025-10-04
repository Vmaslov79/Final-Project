terraform {
  backend "s3" {
    bucket         = "vlad-final-step"
    key            = "vlad-final-step/terraform.tfstate"
    encrypt        = true
    #dynamodb_table = "lock-tf-vlad"
    # dynamo key LockID
    # Params tekan from -backend-config when terraform init
    region = eu-central-1
    #profile = 

  }
}


#resource "aws_dynamodb_table" "terraform_lock" {
 # name         = "lock-tf-vlad"
  #billing_mode = "PAY_PER_REQUEST"

#  hash_key = "LockID"

  #attribute {
  #  name = "LockID"
  #  type = "S"
  #}

  #tags = {
  #  Name        = "Terraform State Lock"
  #  Environment = "Vlad-step"
  #}
#}