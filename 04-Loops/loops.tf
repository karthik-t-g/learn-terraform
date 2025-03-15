resource "null_resource" "test" {
  count=3
}
variable "component" {
default = ["mongo","frontend","catalogue"]
}
resource "null_resource" "test1" {
  count= length(component)
}