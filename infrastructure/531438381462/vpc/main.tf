############################
# eu-west-1
############################
resource "aws_vpc" "vpc_network_eu" {
  provider   = aws.eu
  cidr_block = "10.0.0.0/16"

  tags = {
    Name        = "${var.project_name}-network-eu"
    Environment = var.environment
    Region      = "eu-west-1"
    AccountID   = var.aws_account_id
  }
}

resource "aws_subnet" "vpc_subnet_eu" {
  provider                = aws.eu
  vpc_id                  = aws_vpc.vpc_network_eu.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "eu-west-1a"
  map_public_ip_on_launch = true

  tags = {
    Name        = "${var.project_name}-subnet-eu"
    Environment = var.environment
    Region      = "eu-west-1"
    AccountID   = var.aws_account_id
  }
}

resource "aws_security_group" "security_group_eu" {
  provider    = aws.eu
  vpc_id      = aws_vpc.vpc_network_eu.id
  name_prefix = "${var.project_name}-eu-"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "HTTP"
  }

  tags = {
    Name        = "${var.project_name}-sg-eu"
    Environment = var.environment
    Region      = "eu-west-1"
    AccountID   = var.aws_account_id
  }
}

############################
# us-east-1
############################
resource "aws_vpc" "vpc_network_us" {
  provider   = aws.us
  cidr_block = "10.1.0.0/16"

  tags = {
    Name        = "${var.project_name}-network-us"
    Environment = var.environment
    Region      = "us-east-1"
    AccountID   = var.aws_account_id
  }
}

resource "aws_subnet" "vpc_subnet_us" {
  provider                = aws.us
  vpc_id                  = aws_vpc.vpc_network_us.id
  cidr_block              = "10.1.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name        = "${var.project_name}-subnet-us"
    Environment = var.environment
    Region      = "us-east-1"
    AccountID   = var.aws_account_id
  }
}

resource "aws_security_group" "security_group_us" {
  provider    = aws.us
  vpc_id      = aws_vpc.vpc_network_us.id
  name_prefix = "${var.project_name}-us-"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "HTTP"
  }

  tags = {
    Name        = "${var.project_name}-sg-us"
    Environment = var.environment
    Region      = "us-east-1"
    AccountID   = var.aws_account_id
  }
}
