resource "tls_private_key" "keys" {
  algorithm   = var.algorithm
  ecdsa_curve = var.algorithm == "ECDSA" ? var.ecdsa_curve : null
  rsa_bits    = var.algorithm == "RSA" ? var.rsa_bits : null
}

variable "algorithm" {
  type    = string
  default = "RSA"

  validation {
    condition     = anytrue([var.algorithm == "RSA", var.algorithm == "ED25519", var.algorithm == "ECDSA"])
    error_message = "Algorithm needs to be a valid type."
  }
}

variable "rsa_bits" {
  type    = number
  default = 4096
}

variable "ecdsa_curve" {
  type    = string
  default = "P384"

  validation {
    condition     = anytrue([var.ecdsa_curve == "P256", var.ecdsa_curve == "P384", var.ecdsa_curve == "P521"])
    error_message = "Ecdsa curve needs to be a valid type."
  }
}

output "public_ssh" {
  value = tls_private_key.keys.public_key_openssh
}

output "private_ssh" {
  value = tls_private_key.keys.private_key_openssh
}