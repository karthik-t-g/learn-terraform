variable "x" {
  default= 10

}
variable "n" {
default={
  name="karthi"
  age="10"
}
}
variable "m" {
  default = [10, true, "something"]
}

output "x" {
  value= var.x
}
output "n" {
  value= "this is my name ${var.n[name]}"
}

output "x1" {

  value= "this is ${var.x}"
}

output "m" {

  value= "this is ${var.m[0]}"
}

