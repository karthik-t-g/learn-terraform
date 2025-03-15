resource "null_resource" "test" {
  count=3
}
variable "component" {
default = ["frontend","mongo","catalogue"]
}
output "test" {
  value = length(component)
}