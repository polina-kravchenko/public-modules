output "result" {
  description = "Random identifier to use in names (or overriden value)"
  value       = var.override != null ? var.override : random_string.suffix.result
}