output "result" {
  description = "Random identifier to use in names"
  value       = random_string.suffix.result
}