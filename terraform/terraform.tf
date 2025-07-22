terraform {
  backend "s3" {
    bucket  = "my-terraform-state-bucket-data"  # your actual bucket name
    key     = "terraform/dev/terraform.tfstate" # path inside the bucket
    region  = "ap-south-1"                      # your region
    dynamodb_table = "terraform-locks"          # Enable locking
    encrypt = true                              # encryption at rest
  }
}
