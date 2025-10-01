region = "eu-west-1"
team   = "platform-team"

servers = {
  web-1 = {
    name              = "web-instance-01"
    ami_id            = "ami-091a906f2e1e40076"
    instance_type     = "t3.micro"
    key_name          = "my-key"
    subnet_id         = "subnet-0e92060ace5e8378f"
    security_group_id = "sg-0aff677d049d613f9"
    environment       = "dev"
  }

  db-1 = {
    name              = "database-instance-01"
    ami_id            = "ami-091a906f2e1e40076"
    instance_type     = "t3.small"
    key_name          = "my-key"
    subnet_id         = "subnet-0e92060ace5e8378f"
    security_group_id = "sg-0aff677d049d613f9"
    environment       = "prod"
  }
}
