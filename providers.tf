terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region     = ""
  access_key = ""
  secret_key = ""
}


# Hi  @4Sure team , note that i have removed my AWS CRED here, due to the security issues that may arise if i push the code to github with these keys. Thanks
