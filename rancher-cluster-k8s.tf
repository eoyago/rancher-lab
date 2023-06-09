provider "aws" {
  region = "sa-east-1"  # Substitua pela sua região desejada
}

resource "aws_security_group" "instance_sg" {
  name        = "instance-sg"
  description = "Security group for instances"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "instance1" {
  ami           = "ami-0f47fe3e9defb4cbf"  # Substitua pelo ID da imagem AMI desejada
  instance_type = "t3.large"
  root_block_device {
    volume_size = 16
    volume_type = "gp2"
  }

  key_name = "curso-rancher.pem"  # Substitua pelo nome da sua chave PEM

  vpc_security_group_ids = [aws_security_group.instance_sg.id]

  tags = {
    Name = "rancher-lab"
  }
}

resource "aws_instance" "instance2" {
  ami           = "ami-0f47fe3e9defb4cbf"  # Substitua pelo ID da imagem AMI desejada
  instance_type = "t3.large"
  root_block_device {
    volume_size = 8
    volume_type = "gp2"
  }

  key_name = "curso-rancher.pem"  # Substitua pelo nome da sua chave PEM

  vpc_security_group_ids = [aws_security_group.instance_sg.id]

  tags = {
    Name = "k8s1"
  }
}

resource "aws_instance" "instance3" {
  ami           = "ami-0f47fe3e9defb4cbf"  # Substitua pelo ID da imagem AMI desejada
  instance_type = "t3.large"
  root_block_device {
    volume_size = 8
    volume_type = "gp2"
  }

  key_name = "curso-rancher.pem"  # Substitua pelo nome da sua chave PEM

  vpc_security_group_ids = [aws_security_group.instance_sg.id]

  tags = {
    Name = "k8s2"
  }
}

resource "aws_instance" "instance4" {
  ami           = "ami-0f47fe3e9defb4cbf"  # Substitua pelo ID da imagem AMI desejada
  instance_type = "t3.large"
  root_block_device {
    volume_size = 8
    volume_type = "gp2"
  }

  key_name = "curso-rancher.pem"  # Substitua pelo nome da sua chave PEM

  vpc_security_group_ids = [aws_security_group.instance_sg.id]

  tags = {
    Name = "k8s3"
  }
}
