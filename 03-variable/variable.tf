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

output {
  value= var.x
}
output {
  value= "this is my name ${var.n[name]}"
}

output {

  value= "this is ${var.x}"
}

output {

  value= "this is ${var.m[0]}"
}

