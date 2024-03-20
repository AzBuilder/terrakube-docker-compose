resource "random_integer" "time" {
  min = 1
  max = 5
}

output "output_time" {
  value = random_integer.time.result
}