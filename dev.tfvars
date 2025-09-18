instances = {
  dev1 = {
    ami           = "ami-0885b1f6bd170450c" # Amazon Linux 2 (example)
    instance_type = "t2.micro"
    subnet_id     = "subnet-0825b67c1733bd67e"
    root_volume   = 20
    tags = {
      Name = "dev-instance-1"
      Env  = "dev"
    }
  }

  dev2 = {
    ami           = "ami-0885b1f6bd170450c"
    instance_type = "t2.micro"
    subnet_id     = "subnet-0825b67c1733bd67e"
    root_volume   = 20
    tags = {
      Name = "dev-instance-2"
      Env  = "dev"
    }
  }
}

