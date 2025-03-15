resource "null_resource" "test" {
  count=3
}
variable "component" {
default = ["mongo","frontend","catalogue"]
}
output "test" {
  value= length(var.component)

}
resource "null_resource" "test1" {
  count = length(var.component)
}