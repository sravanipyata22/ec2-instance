resource "aws_instance" "sravanitfinsta" {
  ami           = var.amiid
  instance_type = var.instatype
  subnet_id = var.subid
  vpc_security_group_ids = [var.vpcsgid]
  #vpc_id     = aws_vpc.main.id
  #subnet_id = aws_subnet.subnet1.id 
  #vpc_security_group_ids = [aws_security_group.group1.id]
 
  tags = {
    Name = "tfinstance"
    Environment = "dev1"
  }
}