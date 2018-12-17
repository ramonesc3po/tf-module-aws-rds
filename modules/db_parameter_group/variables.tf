variable "identifier" {
  description = "Identifier of the resource"
}

variable "create" {
  description = "Create parameter group"
  default = true
}

variable "family" {
  description = "The family of the DB parameter group."
}

variable "name_prefix" {
  description = "Creates a unique name beginning with the specified prefix. Conflicts with name"
}

variable "parameters" {
  description = "A list of DB parameters to apply. Note that parameters may differ from a family to an other. Full list of all parameters can be discovered via aws rds describe-db-parameters after initial creation of the group"
  type = "list"
  default = []
}

variable "common_tags" {
  description = "Common tags in the resources"
  type = "map"
  default = {
    Terraform = "true"
  }
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type = "map"
  default = {}
}