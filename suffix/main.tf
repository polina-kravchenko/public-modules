resource "random_string" "suffix" {
  length    = var.suffix_length
  special   = var.use_specials
  upper     = var.use_upper
  min_lower = var.min_lower
}