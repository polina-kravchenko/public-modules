variable "suffix_length" {
  description = "How long should the suffix be"
  type        = number
  default     = 4
}

variable "use_specials" {
  type    = bool
  default = false
}

variable "use_upper" {
  type    = bool
  default = false
}

variable "min_lower" {
  type    = number
  default = 2
}

variable "override" {
  type    = string
  default = null
}