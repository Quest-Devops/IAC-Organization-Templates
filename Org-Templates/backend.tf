#.................................... Terraform Backend ....................................# 

terraform {
    backend "gcs" {
    bucket  = "slz-poc" 
    prefix  = "organization/folder"
  }
}
