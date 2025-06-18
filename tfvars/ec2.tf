resource "aws_instance" "my_server" {
  count = length(var.ec2_names)
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls[count.index].id]

  tags = merge (
    var.commontags,    
  {
    Name = "${var.project}-${var.ec2_names[count.index]}-${var.environment}"
  }
  )

  
}

resource "aws_security_group" "allow_tls" {
  count = length(var.ec2_names)
  name        = "${var.project}-${var.ec2_names[count.index]}-${var.environment}"
  description = "Allow TLS inbound traffic and all outbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge (
    var.commontags,    
  {
    Name = "${var.project}-${var.ec2_names[count.index]}-${var.environment}"
  }
  )
}
