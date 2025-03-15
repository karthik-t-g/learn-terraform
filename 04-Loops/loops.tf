resource "null_resource" "test" {
  count=3
}
variable "component" {
default = ["frontend","mongo","catalogue"]
}
output "test" {
  value= length(var.component)

}
resource "null_resource" "test1" {
  count = length(var.component)
}