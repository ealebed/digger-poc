# resource "aws_vpc" "vpc_network" {
#   cidr_block = "10.0.0.0/16"
#   tags = {
#     Name        = "terraform-network"
#     Environment = var.environment
#   }
# }

# resource "aws_subnet" "vpc_subnet" {
#   vpc_id                  = aws_vpc.vpc_network.id
#   cidr_block              = "10.0.1.0/24"
#   availability_zone       = "eu-west-1a"
#   map_public_ip_on_launch = true

#   tags = {
#     Name        = "terraform-subnet"
#     Environment = var.environment
#   }
# }

# resource "aws_security_group" "security_group" {
#   vpc_id      = aws_vpc.vpc_network.id
#   name_prefix = "terraform-"
#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }
