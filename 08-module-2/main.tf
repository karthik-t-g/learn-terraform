module "ec2" {
  source = "./ec2"

}
module "dns" {
  source = "./dns"
  input = module.ec2.private_ip
}