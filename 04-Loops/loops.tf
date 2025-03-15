resource "null_resource" "test" {
  count=3
}
variable "component" {
default = ["frontend","frontend","catalogue"]
}
output "test" {
  value= length(var.component)

}