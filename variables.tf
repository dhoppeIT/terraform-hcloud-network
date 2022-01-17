variable "name" {
  type        = string
  description = "Name of the Network to create"
}

variable "ip_range_network" {
  type        = string
  description = "IP Range of the whole Network which must span all included subnets and route destinations"
}

variable "labels" {
  type        = map(string)
  default     = {}
  description = "User-defined labels (key-value pairs) should be created with"
}

variable "delete_protection" {
  type        = bool
  default     = false
  description = "Enable or disable delete protection"
}

variable "create_network_subnet" {
  type        = bool
  default     = false
  description = "Whether to create network subnet"
}

variable "type" {
  type        = string
  default     = null
  description = "Type of subnet"
}

variable "ip_range_subnet" {
  type        = string
  default     = null
  description = "Range to allocate IPs from"
}

variable "network_zone" {
  type        = string
  default     = null
  description = "Name of network zone"
}

variable "vswitch_id" {
  type        = number
  default     = null
  description = "ID of the vswitch"
}
