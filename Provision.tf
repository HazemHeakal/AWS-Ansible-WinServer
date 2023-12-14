provider "aws" {
  region = "us-east-2"
}

resource "aws_key_pair" "auth" {
  key_name   = "AWS_KEy"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC/XoE169fQ+YIX9q6fWTqA1B8HLhL6FHwH+A7KEKvdEg6J3TeRSbR5SPswVWE5zIg7owmCD02jYyA+6ZfSRyFbz6N4y/tw0IkCV6EL7h1Dt42aiLcKuUBEhyaD3uB81b8q0jFjsF2E/toibq42bcvJsGIJ/tXfJhc09fpSBkAEz0wrSeE2HPabo1Hz+MUfEOLNJZOrHAHh03rFU8EaAS9yapUrNNyTw7Ff0Ch2f5lQ9VJ/cGKqkuSKS3pCCS6DbvPBrVSqy2/J+ho5ExjwV6Dn93jKFSsAQ+68/sYE5d3yO/9HMiXJpI5EG3/cMk8baE1aiL1fWyrxPvFy1qJQf7U48JmjIg61G9j3SIOmgr+MzPlCXDwLbrnLopFHiSa1Ua1p+R1bfYHEvMg2cbmaL/z0/BoAkC28vupsAWjU1PHUadyQICp0iVA1VEx6yUhaKKWL9y7msJVjQ1MzUHwVT0SG34A/jn2+MT6Y3nEvCA4NoR8MzapcvLsJwznKS0LTue0= hazem@DESKTOP-52EUF8F"
}

resource "aws_security_group" "allow_rdp" {
  name        = "allow_rddpp"
  description = "Allow RDP inbound traffic"

  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # WARNING: It's better to restrict to known IPs for security
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "windows_instance" {
  ami           = "ami-0d7dd61c1b4cb03f7"  
  instance_type = "t3.large"
  key_name      = aws_key_pair.auth.key_name
  security_groups = [aws_security_group.allow_rdp.name]
  
  get_password_data = true
  
  user_data = <<-EOF
                <powershell>
                Install-WindowsFeature -name Web-Server -IncludeManagementTools
                </powershell>
                EOF

  tags = {
    Name = "WindowsServerWithIIS"
  }
}

data "aws_instance" "example" {
  instance_id = aws_instance.windows_instance.id
}

output "instance_id" {
  value = aws_instance.windows_instance.id
}

output "instance_ip" {
  value = aws_instance.windows_instance.public_ip
}

output "encrypted_password" {
  value     = data.aws_instance.example.password_data
  sensitive = true
}
