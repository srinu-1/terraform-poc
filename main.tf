resource "aws_instance" "server" {
  count         = var.instance_count
  ami           = "ami-0f5ee92e2d63afc18" # Update for your region
  instance_type = var.instance_type

  tags = {
    Name = "server-${count.index}"
  }
}
