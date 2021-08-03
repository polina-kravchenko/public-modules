resource "random_string" "suffix" {
  length    = var.suffix_length
  special   = false
  upper     = false
  min_lower = 2
}