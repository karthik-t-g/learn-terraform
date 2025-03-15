resource "null_resource" "fruits" {
  for_each = var.fruits

}
resource "null_resource" "quantity" {
  for_each = var.fruits.apple.quantity
}

variable "fruits" {
  default = {
    apple = {
      name     = "apple"
      quantity = 100
    }
    banana = {
      name     = "banana"
      quantity = 20
    }
  }
}

resource "null_resource" "instances" {
  for_each = var.instances
}

variable "instances" {
  default = {
    frontend  = {}
    catalogue = {}
    mongo     = {}
  }
}