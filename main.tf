provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {}
}

resource "aws_instance" "web_server" {
  for_each = var.servers

  ami                         = each.value.ami_id
  instance_type               = each.value.instance_type
  key_name                    = each.value.key_name
  subnet_id                   = each.value.subnet_id
  vpc_security_group_ids      = [each.value.security_group_id]
  associate_public_ip_address = false

  tags = {
    Name        = each.value.name
    Environment = each.value.environment
    Team        = var.team
    CreatedBy   = "Terraform"
  }
}
