variable "create" {
  description = "Create option group"
  default     = true
}

variable "name_prefix" {
  description = "Creates a unique name beginning with the specified prefix. Conflicts with name. Must be lowercase, to match as it is stored in AWS."
}

variable "identifier" {
  description = "Define identifier name of the resource"
}

variable "engine_name" {
  description = "Specifies the name of the engine that this option group should be associated with"
}

variable "major_engine_version" {
  description = "Specifies the major version of the engine that this option group should be associated with"
}

variable "options" {
  description = "A list of Options to apply"
  type        = "list"
  default     = []
}

variable "common_tags" {
  description = "Common tags"
  type        = "map"

  default = {
    Terraform = "true"
  }
}

variable "tags" {
  description = " A mapping of tags to assign to the resource"
  type        = "map"
  default     = {}
}
