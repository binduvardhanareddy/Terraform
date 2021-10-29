resource "aws_instance" "myawsserver" {
  ami = "ami-02e136e904f3da870"
  instance_type = "t2.nano"

  tags = {
    Name = "Bindu-29"
    Env = "Prod"
  }
}

output "myawsserver-ip" {
  value = aws_instance.myawsserver.public_ip
}

output "myserver-PrivateIP" {
  value = aws_instance.myawsserver.private_ip
}



