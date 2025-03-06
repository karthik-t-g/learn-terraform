resource "aws_instance" "web"{
    ami=
    instance_type=t3.small
    tags{
        name="demo_instance"
        }
    }