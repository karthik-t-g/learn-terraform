resource "aws_instance" "web"{
    ami="ami-09c813fb71547fc4f"
    instance_type="t3.small"
    tags= {
        name="demo_instance"
        }
    }
output "web" {
    b=aws_instance.web.instance_type
    }