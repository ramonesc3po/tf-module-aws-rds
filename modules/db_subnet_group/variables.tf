variable "create" {
  description = ""
  default = true
}

variable "name_prefix" {
  description = "Creates a unique name beginning with the specified prefix. Conflicts with name."
}

variable "identifier" {
  description = "Identifier name of the resource"
}

variable "subnet_ids" {
  description = "A list of subnet types"
  type = "list"
  default = []
}

variable "common_tags" {
  type = "map"
  default = {
    Terraform = "true"
  }
}

variable "tags" {
  description = "Define extra tags of the resource"
  type = "map"
  default = {}
}