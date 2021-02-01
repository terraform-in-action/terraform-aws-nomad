variable "consul" {
  default = {
    version              = "1.5.2"
    servers_count        = 3
    server_instance_type = "t3.micro"
  }
  type = object({
    version              = string
    servers_count        = number
    server_instance_type = string
  })
}

variable "nomad" {
  default = {
    version              = "0.9.3"
    servers_count        = 3
    server_instance_type = "t3.micro"
    clients_count        = 3
    client_instance_type = "t3.micro"
  }
  type = object({
    version              = string
    servers_count        = number
    server_instance_type = string
    clients_count        = number
    client_instance_type = string
  })
}

variable "region" {
  default = "us-west-2"
  type    = string
}

variable "namespace" {
  default = "terraforminaction"
  type    = string
}

variable "ssh_keypair" {
  default = null
  type    = string
}

variable "datacenter" {
  default = "aws"
  type    = string
}

variable "join_wan" {
  type    = list(string)
  default = []
}

variable "associate_public_ips" {
  default = true
  type = bool
}
