resource "null-resource" "test" {
  count=3
}
variable "component" {
default = ["frontend","mongo","catalogue"]
}
output "component" {
  value = length(component)
}