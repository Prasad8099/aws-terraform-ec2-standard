resource "aws_instance" "this" {
  for_each      = var.instances
  ami           = each.value.ami
  instance_type = each.value.instance_type
  subnet_id     = each.value.subnet_id
  root_block_device {
    volume_size = each.value.root_volume
    volume_type = "gp3"
  }
  tags          = each.value.tags
}
