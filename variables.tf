variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "team" {
  description = "Owning team name"
  type        = string
}

variable "servers" {
  description = "Map of servers to create, with individual specs"
  type = map(object({
    name              = string
    ami_id            = string
    instance_type     = string
    key_name          = string
    subnet_id         = string
    security_group_id = string
    environment       = string
  }))
}
